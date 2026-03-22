package p000admanager.a;

import android.view.View;
import android.widget.TextView;
import ca.d;
import ca.f;
import ca.k;
import com.hades.aar.admanager.activity.FullScreenAdActivity;
import d.a;
import gt.g0;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import rs.c;
/* renamed from: ad-manager.a.e  reason: invalid package */
/* loaded from: classes.dex */
public final class e extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public Ref.IntRef f385h;

    /* renamed from: i  reason: collision with root package name */
    public int f386i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ FullScreenAdActivity f387j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ TextView f388k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ View f389l;

    /* renamed from: m  reason: collision with root package name */
    public final /* synthetic */ d f390m;

    /* renamed from: n  reason: collision with root package name */
    public final /* synthetic */ f f391n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(FullScreenAdActivity fullScreenAdActivity, TextView textView, View view, d dVar, f fVar, c cVar) {
        super(2, cVar);
        this.f387j = fullScreenAdActivity;
        this.f388k = textView;
        this.f389l = view;
        this.f390m = dVar;
        this.f391n = fVar;
    }

    public static final void i(TextView textView, View view, final FullScreenAdActivity fullScreenAdActivity, final d dVar, final f fVar) {
        a aVar;
        da.f b10;
        textView.setVisibility(8);
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: b.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    p000admanager.a.e.k(FullScreenAdActivity.this, dVar, fVar, view2);
                }
            });
            return;
        }
        ConcurrentHashMap concurrentHashMap = FullScreenAdActivity.f21715f;
        fullScreenAdActivity.getClass();
        ga.a.f52235a.d("AdManagerFullScreenAdActivity", "Ad Dismissed: " + dVar);
        d.f a10 = k.f3414a.a();
        if (a10 != null && (b10 = a10.b()) != null) {
            aVar = b10.r();
        } else {
            aVar = null;
        }
        if (aVar != null) {
            a.e(dVar, fVar, null);
        }
        fullScreenAdActivity.finish();
    }

    public static final void j(TextView textView, Ref.IntRef intRef) {
        textView.setText(String.valueOf(intRef.element));
    }

    public static final void k(FullScreenAdActivity fullScreenAdActivity, d dVar, f fVar, View view) {
        a aVar;
        da.f b10;
        ConcurrentHashMap concurrentHashMap = FullScreenAdActivity.f21715f;
        fullScreenAdActivity.getClass();
        ga.a.f52235a.d("AdManagerFullScreenAdActivity", "Ad Dismissed: " + dVar);
        d.f a10 = k.f3414a.a();
        if (a10 != null && (b10 = a10.b()) != null) {
            aVar = b10.r();
        } else {
            aVar = null;
        }
        if (aVar != null) {
            a.e(dVar, fVar, null);
        }
        fullScreenAdActivity.finish();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new e(this.f387j, this.f388k, this.f389l, this.f390m, this.f391n, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((e) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0050 -> B:11:0x002d). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f386i
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L14
            kotlin.jvm.internal.Ref$IntRef r1 = r7.f385h
            kotlin.f.b(r8)
            goto L2d
        L14:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1c:
            kotlin.jvm.internal.Ref$IntRef r1 = r7.f385h
            kotlin.f.b(r8)
            goto L50
        L22:
            kotlin.f.b(r8)
            kotlin.jvm.internal.Ref$IntRef r1 = new kotlin.jvm.internal.Ref$IntRef
            r1.<init>()
            r8 = 5
            r1.element = r8
        L2d:
            int r8 = r1.element
            if (r8 <= 0) goto L64
            com.hades.aar.admanager.activity.FullScreenAdActivity r8 = r7.f387j
            boolean r8 = r8.f21722e
            if (r8 == 0) goto L57
            android.os.Handler r8 = com.hades.aar.admanager.activity.FullScreenAdActivity.f21716g
            android.widget.TextView r4 = r7.f388k
            b.c r5 = new b.c
            r5.<init>()
            r8.post(r5)
            r7.f385h = r1
            r7.f386i = r3
            r4 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.b(r4, r7)
            if (r8 != r0) goto L50
            return r0
        L50:
            int r8 = r1.element
            int r8 = r8 + (-1)
            r1.element = r8
            goto L2d
        L57:
            r7.f385h = r1
            r7.f386i = r2
            r4 = 500(0x1f4, double:2.47E-321)
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.b(r4, r7)
            if (r8 != r0) goto L2d
            return r0
        L64:
            android.os.Handler r8 = com.hades.aar.admanager.activity.FullScreenAdActivity.f21716g
            android.widget.TextView r1 = r7.f388k
            android.view.View r2 = r7.f389l
            com.hades.aar.admanager.activity.FullScreenAdActivity r3 = r7.f387j
            ca.d r4 = r7.f390m
            ca.f r5 = r7.f391n
            b.d r6 = new b.d
            r0 = r6
            r0.<init>()
            r8.post(r6)
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p000admanager.a.e.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
