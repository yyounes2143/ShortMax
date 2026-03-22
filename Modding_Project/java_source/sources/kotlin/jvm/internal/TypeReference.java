package kotlin.jvm.internal;

import androidx.webkit.ProxyConfig;
import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TypeReference.kt */
@Metadata
/* loaded from: classes8.dex */
public final class TypeReference implements KType {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int IS_MARKED_NULLABLE = 1;
    public static final int IS_MUTABLE_COLLECTION_TYPE = 2;
    public static final int IS_NOTHING_TYPE = 4;
    @NotNull
    private final List<KTypeProjection> arguments;
    @NotNull
    private final KClassifier classifier;
    private final int flags;
    @Nullable
    private final KType platformTypeUpperBound;

    /* compiled from: TypeReference.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: TypeReference.kt */
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

    public TypeReference(@NotNull KClassifier classifier, @NotNull List<KTypeProjection> arguments, @Nullable KType kType, int i10) {
        Intrinsics.checkNotNullParameter(classifier, "classifier");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        this.classifier = classifier;
        this.arguments = arguments;
        this.platformTypeUpperBound = kType;
        this.flags = i10;
    }

    private final String asString(boolean z10) {
        String name;
        KClassifier classifier = getClassifier();
        KClass kClass = classifier instanceof KClass ? (KClass) classifier : null;
        Class<?> b10 = kClass != null ? zs.a.b(kClass) : null;
        if (b10 == null) {
            name = getClassifier().toString();
        } else if ((this.flags & 4) != 0) {
            name = "kotlin.Nothing";
        } else if (b10.isArray()) {
            name = getArrayClassName(b10);
        } else if (z10 && b10.isPrimitive()) {
            KClassifier classifier2 = getClassifier();
            Intrinsics.checkNotNull(classifier2, "null cannot be cast to non-null type kotlin.reflect.KClass<*>");
            name = zs.a.c((KClass) classifier2).getName();
        } else {
            name = b10.getName();
        }
        String str = name + (getArguments().isEmpty() ? "" : CollectionsKt.A0(getArguments(), ", ", "<", ">", 0, null, new Function1() { // from class: kotlin.jvm.internal.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence asString$lambda$0;
                asString$lambda$0 = TypeReference.asString$lambda$0(TypeReference.this, (KTypeProjection) obj);
                return asString$lambda$0;
            }
        }, 24, null)) + (isMarkedNullable() ? "?" : "");
        KType kType = this.platformTypeUpperBound;
        if (kType instanceof TypeReference) {
            String asString = ((TypeReference) kType).asString(true);
            if (Intrinsics.areEqual(asString, str)) {
                return str;
            }
            if (Intrinsics.areEqual(asString, str + '?')) {
                return str + '!';
            }
            return '(' + str + ".." + asString + ')';
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence asString$lambda$0(TypeReference typeReference, KTypeProjection it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return typeReference.asString(it);
    }

    private final String getArrayClassName(Class<?> cls) {
        if (Intrinsics.areEqual(cls, boolean[].class)) {
            return "kotlin.BooleanArray";
        }
        if (Intrinsics.areEqual(cls, char[].class)) {
            return "kotlin.CharArray";
        }
        if (Intrinsics.areEqual(cls, byte[].class)) {
            return "kotlin.ByteArray";
        }
        if (Intrinsics.areEqual(cls, short[].class)) {
            return "kotlin.ShortArray";
        }
        if (Intrinsics.areEqual(cls, int[].class)) {
            return "kotlin.IntArray";
        }
        if (Intrinsics.areEqual(cls, float[].class)) {
            return "kotlin.FloatArray";
        }
        if (Intrinsics.areEqual(cls, long[].class)) {
            return "kotlin.LongArray";
        }
        if (Intrinsics.areEqual(cls, double[].class)) {
            return "kotlin.DoubleArray";
        }
        return "kotlin.Array";
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof TypeReference) {
            TypeReference typeReference = (TypeReference) obj;
            if (Intrinsics.areEqual(getClassifier(), typeReference.getClassifier()) && Intrinsics.areEqual(getArguments(), typeReference.getArguments()) && Intrinsics.areEqual(this.platformTypeUpperBound, typeReference.platformTypeUpperBound) && this.flags == typeReference.flags) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    @NotNull
    public List<Annotation> getAnnotations() {
        return CollectionsKt.n();
    }

    @Override // kotlin.reflect.KType
    @NotNull
    public List<KTypeProjection> getArguments() {
        return this.arguments;
    }

    @Override // kotlin.reflect.KType
    @NotNull
    public KClassifier getClassifier() {
        return this.classifier;
    }

    public final int getFlags$kotlin_stdlib() {
        return this.flags;
    }

    @Nullable
    public final KType getPlatformTypeUpperBound$kotlin_stdlib() {
        return this.platformTypeUpperBound;
    }

    public int hashCode() {
        return (((getClassifier().hashCode() * 31) + getArguments().hashCode()) * 31) + Integer.hashCode(this.flags);
    }

    @Override // kotlin.reflect.KType
    public boolean isMarkedNullable() {
        if ((this.flags & 1) != 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return asString(false) + " (Kotlin reflection is not available)";
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TypeReference(@NotNull KClassifier classifier, @NotNull List<KTypeProjection> arguments, boolean z10) {
        this(classifier, arguments, null, z10 ? 1 : 0);
        Intrinsics.checkNotNullParameter(classifier, "classifier");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
    }

    private final String asString(KTypeProjection kTypeProjection) {
        String valueOf;
        if (kTypeProjection.getVariance() == null) {
            return ProxyConfig.MATCH_ALL_SCHEMES;
        }
        KType type = kTypeProjection.getType();
        TypeReference typeReference = type instanceof TypeReference ? (TypeReference) type : null;
        if (typeReference == null || (valueOf = typeReference.asString(true)) == null) {
            valueOf = String.valueOf(kTypeProjection.getType());
        }
        KVariance variance = kTypeProjection.getVariance();
        int i10 = variance == null ? -1 : WhenMappings.$EnumSwitchMapping$0[variance.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return "in " + valueOf;
            } else if (i10 == 3) {
                return "out " + valueOf;
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        return valueOf;
    }

    public static /* synthetic */ void getFlags$kotlin_stdlib$annotations() {
    }

    public static /* synthetic */ void getPlatformTypeUpperBound$kotlin_stdlib$annotations() {
    }
}
