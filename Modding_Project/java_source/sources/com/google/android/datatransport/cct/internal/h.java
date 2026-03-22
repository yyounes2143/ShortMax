package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.o;
/* compiled from: AutoValue_ExternalPRequestContext.java */
/* loaded from: classes4.dex */
final class h extends o {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f17115a;

    /* compiled from: AutoValue_ExternalPRequestContext.java */
    /* loaded from: classes4.dex */
    static final class b extends o.a {

        /* renamed from: a  reason: collision with root package name */
        private Integer f17116a;

        @Override // com.google.android.datatransport.cct.internal.o.a
        public o a() {
            return new h(this.f17116a);
        }

        @Override // com.google.android.datatransport.cct.internal.o.a
        public o.a b(@Nullable Integer num) {
            this.f17116a = num;
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.o
    @Nullable
    public Integer b() {
        return this.f17115a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        Integer num = this.f17115a;
        Integer b10 = ((o) obj).b();
        if (num == null) {
            if (b10 == null) {
                return true;
            }
            return false;
        }
        return num.equals(b10);
    }

    public int hashCode() {
        int hashCode;
        Integer num = this.f17115a;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return hashCode ^ 1000003;
    }

    public String toString() {
        return "ExternalPRequestContext{originAssociatedProductId=" + this.f17115a + "}";
    }

    private h(@Nullable Integer num) {
        this.f17115a = num;
    }
}
