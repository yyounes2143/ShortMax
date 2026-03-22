package com.bytedance.bdtracker;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.applog.IEventObserver;
import com.bytedance.applog.IPresetEventObserver;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class e1 implements IEventObserver, IPresetEventObserver {

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArraySet<l0> f11984a = new CopyOnWriteArraySet<>();

    public void a(l0 l0Var) {
        if (l0Var != null) {
            this.f11984a.add(l0Var);
        }
    }

    public void b(l0 l0Var) {
        if (l0Var != null) {
            this.f11984a.remove(l0Var);
        }
    }

    @Override // com.bytedance.applog.IEventObserver
    public void onEvent(@NonNull String str, @NonNull String str2, String str3, long j10, long j11, String str4) {
        Iterator<l0> it = this.f11984a.iterator();
        while (it.hasNext()) {
            it.next().onEvent(str, str2, str3, j10, j11, str4);
        }
    }

    @Override // com.bytedance.applog.IEventObserver
    public void onEventV3(@NonNull String str, @Nullable JSONObject jSONObject) {
        Iterator<l0> it = this.f11984a.iterator();
        while (it.hasNext()) {
            it.next().onEventV3(str, jSONObject);
        }
    }

    @Override // com.bytedance.applog.IPresetEventObserver
    public void onLaunch(JSONObject jSONObject) {
        Iterator<l0> it = this.f11984a.iterator();
        while (it.hasNext()) {
            it.next().onLaunch(jSONObject);
        }
    }

    @Override // com.bytedance.applog.IPresetEventObserver
    public void onPageEnter(JSONObject jSONObject) {
        Iterator<l0> it = this.f11984a.iterator();
        while (it.hasNext()) {
            it.next().onPageEnter(jSONObject);
        }
    }

    @Override // com.bytedance.applog.IPresetEventObserver
    public void onPageLeave(JSONObject jSONObject) {
        Iterator<l0> it = this.f11984a.iterator();
        while (it.hasNext()) {
            it.next().onPageLeave(jSONObject);
        }
    }
}
