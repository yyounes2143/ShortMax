package com.bytedance.bdtracker;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.IDataObserver;
import com.bytedance.applog.onekit.DeviceComponentRegistrar;
import com.volcengine.onekit.component.ComponentContainer;
import com.volcengine.onekit.service.Device;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class i3 implements IDataObserver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ComponentContainer f12061a;

    public i3(DeviceComponentRegistrar.a aVar, ComponentContainer componentContainer) {
        this.f12061a = componentContainer;
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onIdLoaded(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        if (!TextUtils.isEmpty(AppLog.getDid())) {
            this.f12061a.set(new j3(), new Class[]{Device.class});
            AppLog.removeDataObserver(this);
        }
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteIdGet(boolean z10, String str, @NonNull String str2, @NonNull String str3, @NonNull String str4, @NonNull String str5, @NonNull String str6) {
        if (!TextUtils.isEmpty(AppLog.getDid())) {
            this.f12061a.set(new j3(), new Class[]{Device.class});
            AppLog.removeDataObserver(this);
        }
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onAbVidsChange(@NonNull String str, @NonNull String str2) {
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteAbConfigGet(boolean z10, @NonNull JSONObject jSONObject) {
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteConfigGet(boolean z10, JSONObject jSONObject) {
    }
}
