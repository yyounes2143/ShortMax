package androidx.emoji2.text;

import android.os.Handler;
import java.util.concurrent.Executor;
/* compiled from: R8$$SyntheticClass */
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Handler f1428a;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f1428a.post(runnable);
    }
}
