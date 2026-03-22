package com.bytedance.bdtracker;

import androidx.annotation.NonNull;
import com.bytedance.applog.IDataObserver;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class d1 implements IDataObserver {

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArraySet<IDataObserver> f11937a = new CopyOnWriteArraySet<>();

    public void a(IDataObserver iDataObserver) {
        if (iDataObserver != null) {
            this.f11937a.add(iDataObserver);
        }
    }

    public void b(IDataObserver iDataObserver) {
        if (iDataObserver != null) {
            this.f11937a.remove(iDataObserver);
        }
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onAbVidsChange(@NonNull String str, @NonNull String str2) {
        Iterator<IDataObserver> it = this.f11937a.iterator();
        while (it.hasNext()) {
            it.next().onAbVidsChange(str, str2);
        }
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onIdLoaded(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        Iterator<IDataObserver> it = this.f11937a.iterator();
        while (it.hasNext()) {
            it.next().onIdLoaded(str, str2, str3);
        }
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteAbConfigGet(boolean z10, @NonNull JSONObject jSONObject) {
        Iterator<IDataObserver> it = this.f11937a.iterator();
        while (it.hasNext()) {
            it.next().onRemoteAbConfigGet(z10, jSONObject);
        }
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteConfigGet(boolean z10, JSONObject jSONObject) {
        Iterator<IDataObserver> it = this.f11937a.iterator();
        while (it.hasNext()) {
            it.next().onRemoteConfigGet(z10, jSONObject);
        }
    }

    @Override // com.bytedance.applog.IDataObserver
    public void onRemoteIdGet(boolean z10, String str, @NonNull String str2, @NonNull String str3, @NonNull String str4, @NonNull String str5, @NonNull String str6) {
        Iterator<IDataObserver> it = this.f11937a.iterator();
        while (it.hasNext()) {
            it.next().onRemoteIdGet(z10, str, str2, str3, str4, str5, str6);
        }
    }
}
