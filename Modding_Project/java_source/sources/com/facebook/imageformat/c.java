package com.facebook.imageformat;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageFormat.kt */
@Metadata
/* loaded from: classes3.dex */
public final class c {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f15619c = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final c f15620d = new c(GrsBaseInfo.CountryCodeSource.UNKNOWN, null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f15621a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f15622b;

    /* compiled from: ImageFormat.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ImageFormat.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface b {
        @NotNull
        c a(@NotNull byte[] bArr, int i10);

        int b();
    }

    public c(@NotNull String name, @Nullable String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f15621a = name;
        this.f15622b = str;
    }

    @NotNull
    public final String a() {
        return this.f15621a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (Intrinsics.areEqual(this.f15621a, cVar.f15621a) && Intrinsics.areEqual(this.f15622b, cVar.f15622b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f15621a.hashCode() * 31;
        String str = this.f15622b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return this.f15621a;
    }
}
