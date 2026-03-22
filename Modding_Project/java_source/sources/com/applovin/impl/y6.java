package com.applovin.impl;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.webkit.internal.AssetHelper;
import com.applovin.sdk.R;
/* loaded from: classes2.dex */
public abstract class y6 extends k3 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.k f10636a;

    /* renamed from: b  reason: collision with root package name */
    private String f10637b;

    /* renamed from: c  reason: collision with root package name */
    private String f10638c;

    private void a() {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", this.f10638c);
        intent.putExtra("android.intent.extra.TITLE", this.f10637b);
        intent.putExtra("android.intent.extra.SUBJECT", this.f10637b);
        startActivity(Intent.createChooser(intent, null));
    }

    @Override // com.applovin.impl.k3
    protected com.applovin.impl.sdk.k getSdk() {
        return this.f10636a;
    }

    public void initialize(String str, String str2, com.applovin.impl.sdk.k kVar) {
        this.f10636a = kVar;
        this.f10637b = str;
        this.f10638c = str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.k3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_text_view_activity);
        setTitle(this.f10637b);
        ((TextView) findViewById(R.id.textView)).setText(this.f10638c);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.mediation_debugger_activity_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (R.id.action_share == menuItem.getItemId()) {
            a();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
