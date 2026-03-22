package vt;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Caching.kt */
@Metadata
/* loaded from: classes8.dex */
public final class x0 implements KType {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final KType f69541a;

    public x0(@NotNull KType origin) {
        Intrinsics.checkNotNullParameter(origin, "origin");
        this.f69541a = origin;
    }

    public boolean equals(@Nullable Object obj) {
        x0 x0Var;
        KType kType;
        KType kType2;
        if (obj == null) {
            return false;
        }
        KType kType3 = this.f69541a;
        KClassifier kClassifier = null;
        if (obj instanceof x0) {
            x0Var = (x0) obj;
        } else {
            x0Var = null;
        }
        if (x0Var != null) {
            kType = x0Var.f69541a;
        } else {
            kType = null;
        }
        if (!Intrinsics.areEqual(kType3, kType)) {
            return false;
        }
        KClassifier classifier = getClassifier();
        if (classifier instanceof KClass) {
            if (obj instanceof KType) {
                kType2 = (KType) obj;
            } else {
                kType2 = null;
            }
            if (kType2 != null) {
                kClassifier = kType2.getClassifier();
            }
            if (kClassifier != null && (kClassifier instanceof KClass)) {
                return Intrinsics.areEqual(zs.a.b((KClass) classifier), zs.a.b((KClass) kClassifier));
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    @NotNull
    public List<Annotation> getAnnotations() {
        return this.f69541a.getAnnotations();
    }

    @Override // kotlin.reflect.KType
    @NotNull
    public List<KTypeProjection> getArguments() {
        return this.f69541a.getArguments();
    }

    @Override // kotlin.reflect.KType
    @Nullable
    public KClassifier getClassifier() {
        return this.f69541a.getClassifier();
    }

    public int hashCode() {
        return this.f69541a.hashCode();
    }

    @Override // kotlin.reflect.KType
    public boolean isMarkedNullable() {
        return this.f69541a.isMarkedNullable();
    }

    @NotNull
    public String toString() {
        return "KTypeWrapper: " + this.f69541a;
    }
}
