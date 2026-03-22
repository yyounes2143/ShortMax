package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.applovin.sdk.R;
/* loaded from: classes2.dex */
public abstract class n1 extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private p1 f9002a;

    /* renamed from: b  reason: collision with root package name */
    private com.applovin.impl.sdk.k f9003b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f9004c;

    /* renamed from: d  reason: collision with root package name */
    private Button f9005d;

    private void b() {
        s2 s2Var = new s2();
        s2Var.a(this.f9003b.z().a(this.f9002a));
        String b10 = this.f9003b.z().b(this.f9002a.a());
        if (b10 != null) {
            s2Var.a("\nBid Response Preview:\n");
            s2Var.a(b10);
        }
        TextView textView = (TextView) findViewById(R.id.email_report_tv);
        this.f9004c = textView;
        textView.setText(s2Var.toString());
        this.f9004c.setTextColor(ViewCompat.MEASURED_STATE_MASK);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!a()) {
            finish();
            return;
        }
        setTitle(this.f9002a.c() + " - " + this.f9002a.d());
        setContentView(R.layout.creative_debugger_displayed_ad_detail_activity);
        b();
        b8.a(findViewById(16908290), this.f9003b);
        Button button = (Button) findViewById(R.id.report_ad_button);
        this.f9005d = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.pc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                n1.this.a(view);
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.creative_debugger_displayed_ad_activity_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (!a()) {
            finish();
            return false;
        } else if (R.id.action_share == menuItem.getItemId()) {
            this.f9003b.z().a(this.f9002a, (Context) this, false);
            return true;
        } else {
            return super.onOptionsItemSelected(menuItem);
        }
    }

    public void a(p1 p1Var, com.applovin.impl.sdk.k kVar) {
        this.f9002a = p1Var;
        this.f9003b = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f9003b.z().a(this.f9002a, (Context) this, true);
    }

    private boolean a() {
        return (this.f9002a == null || this.f9003b == null) ? false : true;
    }
}
