package com.bytedance.bdtracker;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class e2 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final Context f11985e;

    /* renamed from: f  reason: collision with root package name */
    public final d f11986f;

    public e2(d dVar, Context context) {
        super(true, false);
        this.f11986f = dVar;
        this.f11985e = context;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "SigHash";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        PackageInfo packageInfo;
        Signature[] signatureArr;
        Signature signature;
        String str = null;
        try {
            Context context = this.f11985e;
            packageInfo = u4.a(context, context.getPackageName(), 64);
        } catch (Throwable th2) {
            this.f11986f.D.error("Get package info failed", th2, new Object[0]);
            packageInfo = null;
        }
        if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length > 0 && (signature = signatureArr[0]) != null) {
            str = o4.a(signature.toByteArray());
        }
        if (str != null) {
            jSONObject.put("sig_hash", str);
            return true;
        }
        return true;
    }
}
