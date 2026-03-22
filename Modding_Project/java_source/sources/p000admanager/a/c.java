package p000admanager.a;

import com.hades.aar.admanager.activity.FullScreenAdActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: ad-manager.a.c  reason: invalid package */
/* loaded from: classes.dex */
public final class c extends Lambda implements Function0 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ FullScreenAdActivity f383d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(FullScreenAdActivity fullScreenAdActivity) {
        super(0);
        this.f383d = fullScreenAdActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.f383d.finish();
        return Unit.f60915a;
    }
}
