package kotlin.reflect;

import java.lang.annotation.Annotation;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypesJVM.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTypesJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypeVariableImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,230:1\n1557#2:231\n1628#2,3:232\n37#3:235\n36#3,3:236\n*S KotlinDebug\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/TypeVariableImpl\n*L\n116#1:231\n116#1:232,3\n116#1:235\n116#1:236,3\n*E\n"})
/* loaded from: classes8.dex */
public final class TypeVariableImpl implements TypeVariable<GenericDeclaration>, TypeImpl {
    @NotNull
    private final KTypeParameter typeParameter;

    public TypeVariableImpl(@NotNull KTypeParameter typeParameter) {
        Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        this.typeParameter = typeParameter;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) obj;
            if (Intrinsics.areEqual(getName(), typeVariable.getName()) && Intrinsics.areEqual(getGenericDeclaration(), typeVariable.getGenericDeclaration())) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public final <T extends Annotation> T getAnnotation(@NotNull Class<T> annotationClass) {
        Intrinsics.checkNotNullParameter(annotationClass, "annotationClass");
        return null;
    }

    @NotNull
    public final Annotation[] getAnnotations() {
        return new Annotation[0];
    }

    @Override // java.lang.reflect.TypeVariable
    @NotNull
    public Type[] getBounds() {
        Type computeJavaType;
        List<KType> upperBounds = this.typeParameter.getUpperBounds();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(upperBounds, 10));
        for (KType kType : upperBounds) {
            computeJavaType = TypesJVMKt.computeJavaType(kType, true);
            arrayList.add(computeJavaType);
        }
        return (Type[]) arrayList.toArray(new Type[0]);
    }

    @NotNull
    public final Annotation[] getDeclaredAnnotations() {
        return new Annotation[0];
    }

    @Override // java.lang.reflect.TypeVariable
    @NotNull
    public GenericDeclaration getGenericDeclaration() {
        throw new NotImplementedError("An operation is not implemented: " + ("getGenericDeclaration() is not yet supported for type variables created from KType: " + this.typeParameter));
    }

    @Override // java.lang.reflect.TypeVariable
    @NotNull
    public String getName() {
        return this.typeParameter.getName();
    }

    @Override // java.lang.reflect.Type, kotlin.reflect.TypeImpl
    @NotNull
    public String getTypeName() {
        return getName();
    }

    public int hashCode() {
        return getName().hashCode() ^ getGenericDeclaration().hashCode();
    }

    @NotNull
    public String toString() {
        return getTypeName();
    }
}
