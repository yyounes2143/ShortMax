package com.inmobi.unifiedId;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class InMobiUserDataTypes {
    @Nullable
    private final String md5;
    @Nullable
    private final String sha1;
    @Nullable
    private final String sha256;

    @Metadata
    @SourceDebugExtension({"SMAP\nInMobiUserDataTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMobiUserDataTypes.kt\ncom/inmobi/unifiedId/InMobiUserDataTypes$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n1#2:29\n*E\n"})
    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        public String f25529a;

        /* renamed from: b  reason: collision with root package name */
        public String f25530b;

        /* renamed from: c  reason: collision with root package name */
        public String f25531c;

        @NotNull
        public final InMobiUserDataTypes build() {
            return new InMobiUserDataTypes(this.f25529a, this.f25530b, this.f25531c);
        }

        @NotNull
        public final Builder md5(@Nullable String str) {
            this.f25529a = str;
            return this;
        }

        @NotNull
        public final Builder sha1(@Nullable String str) {
            this.f25530b = str;
            return this;
        }

        @NotNull
        public final Builder sha256(@Nullable String str) {
            this.f25531c = str;
            return this;
        }
    }

    public InMobiUserDataTypes(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.md5 = str;
        this.sha1 = str2;
        this.sha256 = str3;
    }

    public static /* synthetic */ InMobiUserDataTypes copy$default(InMobiUserDataTypes inMobiUserDataTypes, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = inMobiUserDataTypes.md5;
        }
        if ((i10 & 2) != 0) {
            str2 = inMobiUserDataTypes.sha1;
        }
        if ((i10 & 4) != 0) {
            str3 = inMobiUserDataTypes.sha256;
        }
        return inMobiUserDataTypes.copy(str, str2, str3);
    }

    @Nullable
    public final String component1() {
        return this.md5;
    }

    @Nullable
    public final String component2() {
        return this.sha1;
    }

    @Nullable
    public final String component3() {
        return this.sha256;
    }

    @NotNull
    public final InMobiUserDataTypes copy(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        return new InMobiUserDataTypes(str, str2, str3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InMobiUserDataTypes)) {
            return false;
        }
        InMobiUserDataTypes inMobiUserDataTypes = (InMobiUserDataTypes) obj;
        if (Intrinsics.areEqual(this.md5, inMobiUserDataTypes.md5) && Intrinsics.areEqual(this.sha1, inMobiUserDataTypes.sha1) && Intrinsics.areEqual(this.sha256, inMobiUserDataTypes.sha256)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final String getMd5() {
        return this.md5;
    }

    @Nullable
    public final String getSha1() {
        return this.sha1;
    }

    @Nullable
    public final String getSha256() {
        return this.sha256;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        String str = this.md5;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        String str2 = this.sha1;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        String str3 = this.sha256;
        if (str3 != null) {
            i10 = str3.hashCode();
        }
        return i12 + i10;
    }

    @NotNull
    public String toString() {
        return "InMobiUserDataTypes(md5=" + this.md5 + ", sha1=" + this.sha1 + ", sha256=" + this.sha256 + ')';
    }
}
