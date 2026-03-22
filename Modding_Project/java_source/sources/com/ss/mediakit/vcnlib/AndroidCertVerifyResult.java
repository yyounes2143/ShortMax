package com.ss.mediakit.vcnlib;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes6.dex */
public class AndroidCertVerifyResult {
    private final List<X509Certificate> mCertificateChain;
    private final boolean mIsIssuedByKnownRoot;
    private final int mStatus;

    public AndroidCertVerifyResult(int i10, boolean z10, List<X509Certificate> list) {
        this.mStatus = i10;
        this.mIsIssuedByKnownRoot = z10;
        this.mCertificateChain = new ArrayList(list);
    }

    public byte[][] getCertificateChainEncoded() {
        byte[][] bArr = new byte[this.mCertificateChain.size()];
        for (int i10 = 0; i10 < this.mCertificateChain.size(); i10++) {
            try {
                bArr[i10] = this.mCertificateChain.get(i10).getEncoded();
            } catch (CertificateEncodingException unused) {
                return new byte[0];
            }
        }
        return bArr;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public boolean isIssuedByKnownRoot() {
        return this.mIsIssuedByKnownRoot;
    }

    public AndroidCertVerifyResult(int i10) {
        this.mStatus = i10;
        this.mIsIssuedByKnownRoot = false;
        this.mCertificateChain = Collections.emptyList();
    }
}
