package p000admanager.c;

import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.c.f  reason: invalid package */
/* loaded from: classes.dex */
public final class f extends Lambda implements Function1 {

    /* renamed from: d  reason: collision with root package name */
    public static final f f430d = new f();

    public f() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String it = (String) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return new CopyOnWriteArrayList();
    }
}
