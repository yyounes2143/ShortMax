package com.mbridge.msdk.video.module;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.tools.h0;
/* loaded from: classes6.dex */
public class MBridgeVastEndCardView extends MBridgeBaseView {

    /* renamed from: m  reason: collision with root package name */
    private ViewGroup f31041m;

    /* renamed from: n  reason: collision with root package name */
    private View f31042n;

    /* renamed from: o  reason: collision with root package name */
    private View f31043o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MBridgeVastEndCardView.this.notifyListener.a(104, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class b extends com.mbridge.msdk.widget.a {
        b() {
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            MBridgeVastEndCardView mBridgeVastEndCardView = MBridgeVastEndCardView.this;
            mBridgeVastEndCardView.notifyListener.a(108, mBridgeVastEndCardView.c());
        }
    }

    public MBridgeVastEndCardView(Context context) {
        super(context);
    }

    private boolean e() {
        this.f31041m = (ViewGroup) findViewById(findID("mbridge_rl_content"));
        this.f31042n = findViewById(findID("mbridge_iv_vastclose"));
        View findViewById = findViewById(findID("mbridge_iv_vastok"));
        this.f31043o = findViewById;
        return isNotNULL(this.f31041m, this.f31042n, findViewById);
    }

    private void f() {
        if (this.f30929e) {
            setMatchParent();
            setBackgroundResource(findColor("mbridge_reward_endcard_vast_bg"));
            setClickable(true);
            ((RelativeLayout.LayoutParams) this.f31041m.getLayoutParams()).addRule(13, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void d() {
        super.d();
        if (this.f30929e) {
            this.f31042n.setOnClickListener(new a());
            this.f31043o.setOnClickListener(new b());
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        int findLayout = findLayout("mbridge_reward_endcard_vast");
        if (h0.a(findLayout)) {
            this.f30927c.inflate(findLayout, this);
            this.f30929e = e();
            d();
            f();
        }
    }

    public void notifyShowListener() {
        this.notifyListener.a(111, "");
    }

    public MBridgeVastEndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
    }
}
