package com.bytedance.sdk.openadsdk.Id;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn implements ex {
    private ex ZYk;
    Handler oJ = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pfn(ex exVar) {
        this.ZYk = exVar;
    }

    private Context so() {
        try {
            Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
            method.setAccessible(true);
            Object invoke = method.invoke(null, new Object[0]);
            return (Application) invoke.getClass().getMethod("getApplication", new Class[0]).invoke(invoke, new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.Id.ex
    public String Pfn() {
        ex exVar = this.ZYk;
        if (exVar != null) {
            return exVar.Pfn();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.Id.ex
    public Context ZYk() {
        ex exVar = this.ZYk;
        if (exVar != null && exVar.ZYk() != null) {
            return this.ZYk.ZYk();
        }
        return so();
    }

    @Override // com.bytedance.sdk.openadsdk.Id.ex
    public JSONObject ba() {
        ex exVar = this.ZYk;
        if (exVar != null) {
            return exVar.ba();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.Id.ex
    public Map<String, String> cFZ() {
        ex exVar = this.ZYk;
        if (exVar != null && exVar.cFZ() != null) {
            return this.ZYk.cFZ();
        }
        return new HashMap();
    }

    @Override // com.bytedance.sdk.openadsdk.Id.ex
    public Handler ex() {
        ex exVar = this.ZYk;
        if (exVar != null && exVar.cFZ() != null) {
            return this.ZYk.ex();
        }
        Handler handler = new Handler(oJ("pag_strategy", -1).getLooper());
        this.oJ = handler;
        return handler;
    }

    @Override // com.bytedance.sdk.openadsdk.Id.ex
    public ExecutorService oJ() {
        ex exVar = this.ZYk;
        if (exVar != null && exVar.oJ() != null) {
            return this.ZYk.oJ();
        }
        return Executors.newCachedThreadPool();
    }

    @Override // com.bytedance.sdk.openadsdk.Id.ex
    public String tB() {
        ex exVar = this.ZYk;
        if (exVar != null && !TextUtils.isEmpty(exVar.tB())) {
            return this.ZYk.tB();
        }
        return "null";
    }

    @Override // com.bytedance.sdk.openadsdk.Id.ex
    public JSONObject oJ(JSONObject jSONObject) {
        ex exVar = this.ZYk;
        return exVar != null ? exVar.oJ(jSONObject) : jSONObject;
    }

    @Override // com.bytedance.sdk.openadsdk.Id.ex
    public HandlerThread oJ(String str, int i10) {
        HandlerThread oJ;
        ex exVar = this.ZYk;
        if (exVar == null || (oJ = exVar.oJ(str, i10)) == null) {
            HandlerThread handlerThread = new HandlerThread("pag_strategy", -1);
            handlerThread.start();
            return handlerThread;
        }
        return oJ;
    }
}
