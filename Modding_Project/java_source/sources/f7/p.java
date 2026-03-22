package f7;

import android.os.IBinder;
import java.util.List;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
final class p extends j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ IBinder f51645b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ r f51646c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(r rVar, IBinder iBinder) {
        this.f51645b = iBinder;
        this.f51646c = rVar;
    }

    @Override // f7.j
    public final void a() {
        List<Runnable> list;
        List list2;
        this.f51646c.f51648a.f51662m = e.j(this.f51645b);
        t.q(this.f51646c.f51648a);
        this.f51646c.f51648a.f51656g = false;
        list = this.f51646c.f51648a.f51653d;
        for (Runnable runnable : list) {
            runnable.run();
        }
        list2 = this.f51646c.f51648a.f51653d;
        list2.clear();
    }
}
