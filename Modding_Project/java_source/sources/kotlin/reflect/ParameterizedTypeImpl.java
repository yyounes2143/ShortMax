package kotlin.reflect;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypesJVM.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTypesJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/ParameterizedTypeImpl\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,230:1\n37#2:231\n36#2,3:232\n*S KotlinDebug\n*F\n+ 1 TypesJVM.kt\nkotlin/reflect/ParameterizedTypeImpl\n*L\n190#1:231\n190#1:232,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ParameterizedTypeImpl implements ParameterizedType, TypeImpl {
    @Nullable
    private final Type ownerType;
    @NotNull
    private final Class<?> rawType;
    @NotNull
    private final Type[] typeArguments;

    public ParameterizedTypeImpl(@NotNull Class<?> rawType, @Nullable Type type, @NotNull List<? extends Type> typeArguments) {
        Intrinsics.checkNotNullParameter(rawType, "rawType");
        Intrinsics.checkNotNullParameter(typeArguments, "typeArguments");
        this.rawType = rawType;
        this.ownerType = type;
        this.typeArguments = (Type[]) typeArguments.toArray(new Type[0]);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            if (Intrinsics.areEqual(this.rawType, parameterizedType.getRawType()) && Intrinsics.areEqual(this.ownerType, parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.reflect.ParameterizedType
    @NotNull
    public Type[] getActualTypeArguments() {
        return this.typeArguments;
    }

    @Override // java.lang.reflect.ParameterizedType
    @Nullable
    public Type getOwnerType() {
        return this.ownerType;
    }

    @Override // java.lang.reflect.ParameterizedType
    @NotNull
    public Type getRawType() {
        return this.rawType;
    }

    @Override // java.lang.reflect.Type, kotlin.reflect.TypeImpl
    @NotNull
    public String getTypeName() {
        String typeToString;
        boolean z10;
        String typeToString2;
        StringBuilder sb2 = new StringBuilder();
        Type type = this.ownerType;
        if (type != null) {
            typeToString2 = TypesJVMKt.typeToString(type);
            sb2.append(typeToString2);
            sb2.append("$");
            sb2.append(this.rawType.getSimpleName());
        } else {
            typeToString = TypesJVMKt.typeToString(this.rawType);
            sb2.append(typeToString);
        }
        Type[] typeArr = this.typeArguments;
        if (typeArr.length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            n.H0(typeArr, sb2, null, "<", ">", 0, null, ParameterizedTypeImpl$getTypeName$1$1.INSTANCE, 50, null);
        }
        return sb2.toString();
    }

    public int hashCode() {
        int i10;
        int hashCode = this.rawType.hashCode();
        Type type = this.ownerType;
        if (type != null) {
            i10 = type.hashCode();
        } else {
            i10 = 0;
        }
        return (hashCode ^ i10) ^ Arrays.hashCode(getActualTypeArguments());
    }

    @NotNull
    public String toString() {
        return getTypeName();
    }
}
