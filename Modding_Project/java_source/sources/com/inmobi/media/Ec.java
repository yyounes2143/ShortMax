package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class Ec {

    /* renamed from: a  reason: collision with root package name */
    public final String f23624a;

    /* renamed from: b  reason: collision with root package name */
    public final Class f23625b;

    public Ec(@NotNull String fieldName, @NotNull Class<?> originClass) {
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        Intrinsics.checkNotNullParameter(originClass, "originClass");
        this.f23624a = fieldName;
        this.f23625b = originClass;
    }

    @NotNull
    public final Ec a(@NotNull String fieldName, @NotNull Class<?> originClass) {
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        Intrinsics.checkNotNullParameter(originClass, "originClass");
        return new Ec(fieldName, originClass);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ec)) {
            return false;
        }
        Ec ec2 = (Ec) obj;
        if (Intrinsics.areEqual(this.f23624a, ec2.f23624a) && Intrinsics.areEqual(this.f23625b, ec2.f23625b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f23625b.hashCode() + (this.f23624a.hashCode() * 31);
    }

    @NotNull
    public String toString() {
        return "RuleKey(fieldName=" + this.f23624a + ", originClass=" + this.f23625b + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Ec a(Ec ec2, String str, Class cls, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = ec2.f23624a;
        }
        if ((i10 & 2) != 0) {
            cls = ec2.f23625b;
        }
        return ec2.a(str, cls);
    }
}
