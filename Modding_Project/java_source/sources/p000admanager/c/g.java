package p000admanager.c;

import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.c.g  reason: invalid package */
/* loaded from: classes.dex */
public final class g extends Lambda implements Function1 {

    /* renamed from: d  reason: collision with root package name */
    public static final g f431d = new g();

    public g() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        CopyOnWriteArrayList it = (CopyOnWriteArrayList) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return CollectionsKt.e0(it);
    }
}
