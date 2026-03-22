package com.bytedance.bdtracker;

import android.text.TextUtils;
import com.bytedance.applog.encryptor.IEncryptorType;
import com.bytedance.mpaas.IEncryptor;
/* loaded from: classes3.dex */
public class z implements IEncryptorType, IEncryptor {

    /* renamed from: a  reason: collision with root package name */
    public final IEncryptor f12535a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12536b;

    public z(IEncryptor iEncryptor, String str) {
        this.f12535a = iEncryptor;
        this.f12536b = str;
    }

    @Override // com.bytedance.mpaas.IEncryptor
    public byte[] encrypt(byte[] bArr, int i10) {
        IEncryptor iEncryptor = this.f12535a;
        if (iEncryptor != null) {
            return iEncryptor.encrypt(bArr, i10);
        }
        return bArr;
    }

    @Override // com.bytedance.applog.encryptor.IEncryptorType
    public String encryptorType() {
        if (TextUtils.isEmpty(this.f12536b)) {
            return "a";
        }
        return this.f12536b;
    }
}
