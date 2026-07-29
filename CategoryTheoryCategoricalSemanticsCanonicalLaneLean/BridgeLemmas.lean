import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoricalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoryCategoricalSemanticsCanonicalLaneLean
end HautevilleHouse