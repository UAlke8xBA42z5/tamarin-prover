{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE TemplateHaskell #-}
-- |
-- Copyright   : (c) 2019 Robert Künnemann and Alexander Dax
-- License     : GPL v3 (see LICENSE)
--
-- Maintainer  : Robert Künnemann <robert@kunnemann.de>
-- Portability : GHC only
--
-- Translation from Theories with Processes to mrs

module Sapic (
    translate
) where
import Data.Maybe
import Data.Foldable
import Control.Exception
import Sapic.Exceptions
import Theory


translate th = case theoryProcesses th of
      [] -> do return th
      [x] -> do return th
      _ -> throw SomethingBad

-- do
    -- p <-  onlyOneProcess th
    -- -- thy' <- annotate_lock 
    -- return th
    -- where
    --     onlyOneProcess thy =            
        -- isprogressset = False -- TODO implement parser for option and get this
        -- an_proc = processes -- TODO annotate locks
        -- -- msrs = foldr (++) [] (map msrFromProcess processes)
        -- -- new_th = foldrM addProtoRule th msrs
        -- out = (Right th)


-- translate (Left x) = x
-- translate (Right th) =
--     foldr addProtoRule th msrs
--     where
--         processes = theoryProcesses th
--         msrs =  map msrFromProcess processes

--msrFromProcess process = []
--
-- let translation input =
--   let annotated_process = annotate_locks ( sapic_tree2annotatedtree input.proc) in
--   let msr =  
--       if input.op.progress 
--       then progresstrans annotated_process
--       else noprogresstrans annotated_process 
--   and lemmas_tamarin = print_lemmas input.lem
--   and predicate_restrictions = print_predicates input.pred
--   and sapic_restrictions = print_lemmas (generate_sapic_restrictions input.op annotated_process)
--   in
--   let msr' = if Lemma.contains_control input.lem (* equivalent to op.accountability *)
--              then annotate_eventId msr 
--              else msr
--   in
--   input.sign ^ ( print_msr msr' ) ^ sapic_restrictions ^
--   predicate_restrictions ^ lemmas_tamarin 
