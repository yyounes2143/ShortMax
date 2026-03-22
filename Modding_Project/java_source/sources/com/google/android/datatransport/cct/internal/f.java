package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.ComplianceData;
/* compiled from: AutoValue_ComplianceData.java */
/* loaded from: classes4.dex */
final class f extends ComplianceData {

    /* renamed from: a  reason: collision with root package name */
    private final p f17107a;

    /* renamed from: b  reason: collision with root package name */
    private final ComplianceData.ProductIdOrigin f17108b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_ComplianceData.java */
    /* loaded from: classes4.dex */
    public static final class b extends ComplianceData.a {

        /* renamed from: a  reason: collision with root package name */
        private p f17109a;

        /* renamed from: b  reason: collision with root package name */
        private ComplianceData.ProductIdOrigin f17110b;

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.a
        public ComplianceData a() {
            return new f(this.f17109a, this.f17110b);
        }

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.a
        public ComplianceData.a b(@Nullable p pVar) {
            this.f17109a = pVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ComplianceData.a
        public ComplianceData.a c(@Nullable ComplianceData.ProductIdOrigin productIdOrigin) {
            this.f17110b = productIdOrigin;
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.ComplianceData
    @Nullable
    public p b() {
        return this.f17107a;
    }

    @Override // com.google.android.datatransport.cct.internal.ComplianceData
    @Nullable
    public ComplianceData.ProductIdOrigin c() {
        return this.f17108b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ComplianceData)) {
            return false;
        }
        ComplianceData complianceData = (ComplianceData) obj;
        p pVar = this.f17107a;
        if (pVar != null ? pVar.equals(complianceData.b()) : complianceData.b() == null) {
            ComplianceData.ProductIdOrigin productIdOrigin = this.f17108b;
            if (productIdOrigin == null) {
                if (complianceData.c() == null) {
                    return true;
                }
            } else if (productIdOrigin.equals(complianceData.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        p pVar = this.f17107a;
        int i10 = 0;
        if (pVar == null) {
            hashCode = 0;
        } else {
            hashCode = pVar.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        ComplianceData.ProductIdOrigin productIdOrigin = this.f17108b;
        if (productIdOrigin != null) {
            i10 = productIdOrigin.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "ComplianceData{privacyContext=" + this.f17107a + ", productIdOrigin=" + this.f17108b + "}";
    }

    private f(@Nullable p pVar, @Nullable ComplianceData.ProductIdOrigin productIdOrigin) {
        this.f17107a = pVar;
        this.f17108b = productIdOrigin;
    }
}
