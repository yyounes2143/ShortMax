package com.applovin.impl;

import android.app.Activity;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.applovin.creative.MaxCreativeDebuggerDisplayedAdActivity;
import com.applovin.impl.c1;
import com.applovin.impl.d;
import com.applovin.impl.p2;
import com.applovin.sdk.R;
/* loaded from: classes2.dex */
public abstract class b1 extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private c1 f7498a;

    /* renamed from: b  reason: collision with root package name */
    private FrameLayout f7499b;

    /* renamed from: c  reason: collision with root package name */
    private ListView f7500c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements p2.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f7501a;

        /* renamed from: com.applovin.impl.b1$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0107a implements d.b {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ i2 f7503a;

            C0107a(i2 i2Var) {
                this.f7503a = i2Var;
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxCreativeDebuggerDisplayedAdActivity maxCreativeDebuggerDisplayedAdActivity) {
                maxCreativeDebuggerDisplayedAdActivity.a((p1) b1.this.f7498a.d().get(this.f7503a.a()), b1.this.f7498a.e());
            }
        }

        a(c cVar) {
            this.f7501a = cVar;
        }

        @Override // com.applovin.impl.p2.a
        public void a(i2 i2Var, o2 o2Var) {
            if (i2Var.b() != c1.a.RECENT_ADS.ordinal()) {
                return;
            }
            d.a(b1.this, MaxCreativeDebuggerDisplayedAdActivity.class, this.f7501a, new C0107a(i2Var));
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("MAX Creative Debugger");
        setContentView(R.layout.mediation_debugger_list_view);
        this.f7499b = (FrameLayout) findViewById(16908290);
        this.f7500c = (ListView) findViewById(R.id.listView);
        b8.a(this.f7499b, com.applovin.impl.sdk.k.D0);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        c1 c1Var = this.f7498a;
        if (c1Var != null) {
            c1Var.a((p2.a) null);
            this.f7498a.g();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        c1 c1Var = this.f7498a;
        if (c1Var == null) {
            finish();
            return;
        }
        this.f7500c.setAdapter((ListAdapter) c1Var);
        c1 c1Var2 = this.f7498a;
        if (c1Var2 != null && !c1Var2.e().z().g()) {
            a(R.string.applovin_creative_debugger_disabled_text);
            return;
        }
        c1 c1Var3 = this.f7498a;
        if (c1Var3 != null && c1Var3.f()) {
            a(R.string.applovin_creative_debugger_no_ads_text);
        }
    }

    public void a(c1 c1Var, c cVar) {
        this.f7498a = c1Var;
        c1Var.a(new a(cVar));
    }

    private void a(int i10) {
        TextView textView = new TextView(this);
        textView.setGravity(17);
        textView.setTextSize(18.0f);
        textView.setText(i10);
        this.f7499b.addView(textView, new FrameLayout.LayoutParams(-1, -1, 17));
        this.f7499b.bringChildToFront(textView);
    }
}
