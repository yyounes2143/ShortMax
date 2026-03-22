package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import com.inmobi.media.C2914d2;
import com.inmobi.media.H7;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class H7 {

    /* renamed from: a  reason: collision with root package name */
    public final ConcurrentHashMap f23701a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    public final ExecutorService f23702b = Executors.newSingleThreadExecutor(new K5("MultiEventBus"));

    public static final void a(C2914d2 event, H7 this$0) {
        Intrinsics.checkNotNullParameter(event, "$event");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int i10 = event.f24572a;
        this$0.a(event);
    }

    public final void b(final C2914d2 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        try {
            this.f23702b.execute(new Runnable() { // from class: ub.j0
                @Override // java.lang.Runnable
                public final void run() {
                    H7.a(C2914d2.this, this);
                }
            });
        } catch (InternalError unused) {
            a(event);
        }
    }

    public final void a(int[] eventIds, Function1 subscriber) {
        Intrinsics.checkNotNullParameter(eventIds, "eventIds");
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        this.f23701a.put(new G7(eventIds), new WeakReference(subscriber));
    }

    public final void a(Function1 subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        Iterator it = this.f23701a.entrySet().iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(((WeakReference) ((Map.Entry) it.next()).getValue()).get(), subscriber)) {
                it.remove();
            }
        }
    }

    public final void a(C2914d2 c2914d2) {
        Function1 function1;
        Set<Map.Entry> entrySet = this.f23701a.entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet, "<get-entries>(...)");
        for (Map.Entry entry : entrySet) {
            if (((WeakReference) entry.getValue()).get() == null) {
                this.f23701a.remove(entry.getKey());
            }
        }
        Set<Map.Entry> entrySet2 = this.f23701a.entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet2, "<get-entries>(...)");
        for (Map.Entry entry2 : entrySet2) {
            Intrinsics.checkNotNull(entry2);
            Function1 function12 = (Function1) entry2.getKey();
            WeakReference weakReference = (WeakReference) entry2.getValue();
            try {
                if (((Boolean) function12.invoke(c2914d2)).booleanValue() && (function1 = (Function1) weakReference.get()) != null) {
                    function1.invoke(c2914d2);
                }
            } catch (Exception e10) {
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            }
        }
    }
}
