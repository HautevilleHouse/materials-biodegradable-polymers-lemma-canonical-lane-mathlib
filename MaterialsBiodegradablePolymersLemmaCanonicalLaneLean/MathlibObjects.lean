import HautevilleHouse.MaterialsBiodegradablePolymersLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsBiodegradablePolymersLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BiodegradablePolymerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BiodegradablePolymerAdmittedObject where
  space : BiodegradablePolymerSpace
  polymerChainModel : Prop
  degradationEnvironment : Prop
  endpointProperty : Prop
  conclusion : endpointProperty

structure BiodegradablePolymerEndgameState where
  object : BiodegradablePolymerAdmittedObject

def BiodegradablePolymerWitnessClosed (O : BiodegradablePolymerAdmittedObject) : Prop :=
  O.endpointProperty

end MaterialsBiodegradablePolymersLemmaCanonicalLaneLean
end HautevilleHouse