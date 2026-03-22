package es;

import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Type.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final KClass<?> f51548a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Type f51549b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final KType f51550c;

    public a(@NotNull KClass<?> type, @NotNull Type reifiedType, @Nullable KType kType) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(reifiedType, "reifiedType");
        this.f51548a = type;
        this.f51549b = reifiedType;
        this.f51550c = kType;
    }

    @NotNull
    public final KClass<?> a() {
        return this.f51548a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (Intrinsics.areEqual(this.f51548a, aVar.f51548a) && Intrinsics.areEqual(this.f51549b, aVar.f51549b) && Intrinsics.areEqual(this.f51550c, aVar.f51550c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((this.f51548a.hashCode() * 31) + this.f51549b.hashCode()) * 31;
        KType kType = this.f51550c;
        if (kType == null) {
            hashCode = 0;
        } else {
            hashCode = kType.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "TypeInfo(type=" + this.f51548a + ", reifiedType=" + this.f51549b + ", kotlinType=" + this.f51550c + ')';
    }
}
