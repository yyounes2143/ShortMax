package p000admanager.d;

import com.google.android.gms.ads.initialization.AdapterStatus;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
/* renamed from: ad-manager.d.d  reason: invalid package */
/* loaded from: classes.dex */
public final class d extends Lambda implements Function1 {

    /* renamed from: d  reason: collision with root package name */
    public static final d f448d = new d();

    public d() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Intrinsics.checkNotNullParameter(entry, "<name for destructuring parameter 0>");
        String adapter = (String) entry.getKey();
        StringBuilder sb2 = new StringBuilder("[");
        Intrinsics.checkNotNullExpressionValue(adapter, "adapter");
        sb2.append(StringsKt.l1(adapter, ".", null, 2, null));
        sb2.append("]: ");
        sb2.append(((AdapterStatus) entry.getValue()).getInitializationState());
        return sb2.toString();
    }
}
