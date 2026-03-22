package io.bidmachine.iab.mraid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes7.dex */
public class MraidActivity extends io.bidmachine.rendering.internal.a {
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private static final SparseArray<e> f54484d = new SparseArray<>();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Integer f54485a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private e f54486b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f54487c = false;

    /* loaded from: classes7.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f54488a;

        static {
            int[] iArr = new int[MraidType.values().length];
            f54488a = iArr;
            try {
                iArr[MraidType.Static.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f54488a[MraidType.Video.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f54488a[MraidType.Rewarded.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @NonNull
    private static Intent e(@NonNull Context context, @NonNull MraidType mraidType, int i10) {
        Intent a10 = tp.e.a(context, MraidActivity.class);
        a10.putExtra("InterstitialId", i10);
        a10.putExtra("InterstitialType", mraidType);
        return a10;
    }

    private static void f(@NonNull e eVar) {
        f54484d.put(eVar.f54598a, eVar);
    }

    private static void g(@Nullable Integer num) {
        if (num == null) {
            return;
        }
        f54484d.remove(num.intValue());
    }

    private void h() {
        g(this.f54485a);
    }

    public static void i(@Nullable Context context, @Nullable e eVar, @Nullable MraidType mraidType) {
        if (eVar == null) {
            h.d("MraidActivity", "MraidInterstitial is null during showing MraidActivity", new Object[0]);
        } else if (context == null) {
            h.d("MraidActivity", "Context is null during showing MraidActivity", new Object[0]);
            eVar.k(qm.a.h("Context is null during showing MraidActivity"));
        } else if (mraidType == null) {
            h.d("MraidActivity", "MraidType is null during showing MraidActivity", new Object[0]);
            eVar.k(qm.a.h("MraidType is null during showing MraidActivity"));
        } else {
            try {
                f(eVar);
                context.startActivity(e(context, mraidType, eVar.f54598a));
            } catch (Throwable th2) {
                h.e("Exception during showing MraidActivity", th2);
                eVar.k(qm.a.j("Exception during showing MraidActivity", th2));
                g(Integer.valueOf(eVar.f54598a));
            }
        }
    }

    @Override // io.bidmachine.rendering.internal.a
    protected void b() {
        if (this.f54487c) {
            e eVar = this.f54486b;
            if (eVar != null) {
                eVar.o();
            } else {
                yq.n.a(this);
            }
        }
    }

    @Override // io.bidmachine.rendering.internal.a, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!getIntent().hasExtra("InterstitialId")) {
            h.d("MraidActivity", "Mraid display cache id not provided", new Object[0]);
            yq.n.a(this);
            return;
        }
        int intExtra = getIntent().getIntExtra("InterstitialId", 0);
        this.f54485a = Integer.valueOf(intExtra);
        e eVar = f54484d.get(intExtra);
        this.f54486b = eVar;
        if (eVar == null) {
            h.d("MraidActivity", "Mraid interstitial not found in display cache, id=%s", this.f54485a);
            yq.n.a(this);
            return;
        }
        MraidType mraidType = (MraidType) getIntent().getSerializableExtra("InterstitialType");
        if (mraidType == null) {
            h.d("MraidActivity", "MraidType is null", new Object[0]);
            yq.n.a(this);
            this.f54486b.k(qm.a.f("MraidType is null"));
            return;
        }
        sm.q.h(this);
        int i10 = a.f54488a[mraidType.ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3) {
                this.f54487c = false;
            }
        } else {
            this.f54487c = true;
        }
        try {
            this.f54486b.e(this, false);
        } catch (Exception e10) {
            h.e("Exception during showing MraidInterstial in MraidActivity", e10);
            yq.n.a(this);
            this.f54486b.k(qm.a.j("Exception during showing MraidInterstial in MraidActivity", e10));
            h();
        }
        sm.q.j(this);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.f54486b != null && !isChangingConfigurations()) {
            this.f54486b.g();
            h();
        }
    }
}
