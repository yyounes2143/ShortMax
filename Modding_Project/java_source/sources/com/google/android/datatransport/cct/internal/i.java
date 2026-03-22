package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.p;
/* compiled from: AutoValue_ExternalPrivacyContext.java */
/* loaded from: classes4.dex */
final class i extends p {

    /* renamed from: a  reason: collision with root package name */
    private final o f17117a;

    /* compiled from: AutoValue_ExternalPrivacyContext.java */
    /* loaded from: classes4.dex */
    static final class b extends p.a {

        /* renamed from: a  reason: collision with root package name */
        private o f17118a;

        @Override // com.google.android.datatransport.cct.internal.p.a
        public p a() {
            return new i(this.f17118a);
        }

        @Override // com.google.android.datatransport.cct.internal.p.a
        public p.a b(@Nullable o oVar) {
            this.f17118a = oVar;
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.p
    @Nullable
    public o b() {
        return this.f17117a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        o oVar = this.f17117a;
        o b10 = ((p) obj).b();
        if (oVar == null) {
            if (b10 == null) {
                return true;
            }
            return false;
        }
        return oVar.equals(b10);
    }

    public int hashCode() {
        int hashCode;
        o oVar = this.f17117a;
        if (oVar == null) {
            hashCode = 0;
        } else {
            hashCode = oVar.hashCode();
        }
        return hashCode ^ 1000003;
    }

    public String toString() {
        return "ExternalPrivacyContext{prequest=" + this.f17117a + "}";
    }

    private i(@Nullable o oVar) {
        this.f17117a = oVar;
    }
}
