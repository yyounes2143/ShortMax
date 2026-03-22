package com.bytedance.bdtracker;

import androidx.annotation.NonNull;
import com.bytedance.applog.ISessionObserver;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class f1 implements ISessionObserver {

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArraySet<ISessionObserver> f12008a = new CopyOnWriteArraySet<>();

    public void a(ISessionObserver iSessionObserver) {
        if (iSessionObserver != null) {
            this.f12008a.add(iSessionObserver);
        }
    }

    public void b(ISessionObserver iSessionObserver) {
        if (iSessionObserver != null) {
            this.f12008a.remove(iSessionObserver);
        }
    }

    @Override // com.bytedance.applog.ISessionObserver
    public void onSessionBatchEvent(long j10, @NonNull String str, JSONObject jSONObject) {
        Iterator<ISessionObserver> it = this.f12008a.iterator();
        while (it.hasNext()) {
            it.next().onSessionBatchEvent(j10, str, jSONObject);
        }
    }

    @Override // com.bytedance.applog.ISessionObserver
    public void onSessionStart(long j10, @NonNull String str) {
        Iterator<ISessionObserver> it = this.f12008a.iterator();
        while (it.hasNext()) {
            it.next().onSessionStart(j10, str);
        }
    }

    @Override // com.bytedance.applog.ISessionObserver
    public void onSessionTerminate(long j10, @NonNull String str, JSONObject jSONObject) {
        Iterator<ISessionObserver> it = this.f12008a.iterator();
        while (it.hasNext()) {
            it.next().onSessionTerminate(j10, str, jSONObject);
        }
    }
}
