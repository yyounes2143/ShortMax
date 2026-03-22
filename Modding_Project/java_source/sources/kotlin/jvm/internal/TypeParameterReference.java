package kotlin.jvm.internal;

import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KVariance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TypeParameterReference.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTypeParameterReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeParameterReference.kt\nkotlin/jvm/internal/TypeParameterReference\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"})
/* loaded from: classes8.dex */
public final class TypeParameterReference implements KTypeParameter {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private volatile List<? extends KType> bounds;
    @Nullable
    private final Object container;
    private final boolean isReified;
    @NotNull
    private final String name;
    @NotNull
    private final KVariance variance;

    /* compiled from: TypeParameterReference.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* compiled from: TypeParameterReference.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[KVariance.values().length];
                try {
                    iArr[KVariance.INVARIANT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[KVariance.IN.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[KVariance.OUT.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String toString(@NotNull KTypeParameter typeParameter) {
            Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
            StringBuilder sb2 = new StringBuilder();
            int i10 = WhenMappings.$EnumSwitchMapping$0[typeParameter.getVariance().ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        sb2.append("out ");
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                } else {
                    sb2.append("in ");
                }
            } else {
                Unit unit = Unit.f60915a;
            }
            sb2.append(typeParameter.getName());
            return sb2.toString();
        }

        private Companion() {
        }
    }

    public TypeParameterReference(@Nullable Object obj, @NotNull String name, @NotNull KVariance variance, boolean z10) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(variance, "variance");
        this.container = obj;
        this.name = name;
        this.variance = variance;
        this.isReified = z10;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof TypeParameterReference) {
            TypeParameterReference typeParameterReference = (TypeParameterReference) obj;
            if (Intrinsics.areEqual(this.container, typeParameterReference.container) && Intrinsics.areEqual(getName(), typeParameterReference.getName())) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KTypeParameter
    @NotNull
    public String getName() {
        return this.name;
    }

    @Override // kotlin.reflect.KTypeParameter
    @NotNull
    public List<KType> getUpperBounds() {
        List list = this.bounds;
        if (list == null) {
            List<KType> e10 = CollectionsKt.e(Reflection.nullableTypeOf(Object.class));
            this.bounds = e10;
            return e10;
        }
        return list;
    }

    @Override // kotlin.reflect.KTypeParameter
    @NotNull
    public KVariance getVariance() {
        return this.variance;
    }

    public int hashCode() {
        int i10;
        Object obj = this.container;
        if (obj != null) {
            i10 = obj.hashCode();
        } else {
            i10 = 0;
        }
        return (i10 * 31) + getName().hashCode();
    }

    @Override // kotlin.reflect.KTypeParameter
    public boolean isReified() {
        return this.isReified;
    }

    public final void setUpperBounds(@NotNull List<? extends KType> upperBounds) {
        Intrinsics.checkNotNullParameter(upperBounds, "upperBounds");
        if (this.bounds == null) {
            this.bounds = upperBounds;
            return;
        }
        throw new IllegalStateException(("Upper bounds of type parameter '" + this + "' have already been initialized.").toString());
    }

    @NotNull
    public String toString() {
        return Companion.toString(this);
    }

    public static /* synthetic */ void getUpperBounds$annotations() {
    }
}
