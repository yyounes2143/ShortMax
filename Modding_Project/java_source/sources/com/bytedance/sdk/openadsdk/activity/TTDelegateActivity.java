package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.awB;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.Ln;
import com.bytedance.sdk.openadsdk.core.WcQ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.tB.cFZ;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class TTDelegateActivity extends TTBaseActivity {
    private static final Map<String, cFZ.oJ> ex = Collections.synchronizedMap(new HashMap());
    private Intent ZYk;
    cY oJ = null;
    private Ln tB;

    private void Pfn() {
        String pe2;
        String oJ;
        String str;
        int intExtra = this.ZYk.getIntExtra("type", 0);
        if (intExtra != 1) {
            if (intExtra != 6) {
                finish();
                return;
            }
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                pe2 = this.ZYk.getStringExtra("ext_info");
                oJ = this.ZYk.getStringExtra("filter_words");
                str = this.ZYk.getStringExtra("creative_info");
            } else {
                if (this.oJ == null) {
                    this.oJ = IUZ.oJ().oJ(IUZ.oJ(this.ZYk));
                }
                cY cYVar = this.oJ;
                if (cYVar == null) {
                    finish();
                    return;
                }
                pe2 = cYVar.pe();
                oJ = com.bytedance.sdk.openadsdk.tool.oJ.oJ(this.oJ.rJ());
                str = "";
            }
            oJ(pe2, oJ, this.ZYk.getStringExtra("closed_listener_key"), str, this.oJ);
        }
    }

    private void ex() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!WcQ.Pfn()) {
            finish();
            return;
        }
        ex();
        this.ZYk = getIntent();
        if (si.oJ() == null) {
            si.ZYk(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Ln ln2 = this.tB;
        if (ln2 != null) {
            ln2.ZYk();
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (si.oJ() == null) {
            si.ZYk(this);
        }
        setIntent(intent);
        this.ZYk = intent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Ln ln2 = this.tB;
        if ((ln2 == null || ((com.bytedance.sdk.openadsdk.tB.tB) ln2).oJ == null || !((com.bytedance.sdk.openadsdk.tB.tB) ln2).oJ.isShowing()) && this.ZYk != null) {
            Pfn();
        }
    }

    public static void oJ(cY cYVar, String str, cFZ.oJ oJVar) {
        if (cYVar == null) {
            return;
        }
        Intent intent = new Intent(si.oJ(), TTDelegateActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("type", 6);
        intent.putExtra("closed_listener_key", str);
        if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
            intent.putExtra("ext_info", cYVar.pe());
            intent.putExtra("filter_words", com.bytedance.sdk.openadsdk.tool.oJ.oJ(cYVar.rJ()));
            intent.putExtra("creative_info", cYVar.mf().toString());
        } else {
            intent.putExtra("meta_index", IUZ.oJ().oJ(cYVar));
        }
        if (oJVar != null) {
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                com.bytedance.sdk.openadsdk.core.jFA.ZYk().oJ(str, oJVar);
            } else {
                ex.put(str, oJVar);
            }
        }
        com.bytedance.sdk.component.utils.ZYk.oJ(si.oJ(), intent, null);
    }

    public static void oJ(cY cYVar, String str) {
        oJ(cYVar, str, null);
    }

    private void oJ(String str, String str2, final String str3, String str4, cY cYVar) {
        if (str2 != null && str != null && this.tB == null) {
            com.bytedance.sdk.openadsdk.tB.tB tBVar = new com.bytedance.sdk.openadsdk.tB.tB(this, str, com.bytedance.sdk.openadsdk.tool.oJ.oJ(str2), str4, cYVar);
            this.tB = tBVar;
            tBVar.oJ(str3);
            this.tB.oJ(new Ln.oJ() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.1
                @Override // com.bytedance.sdk.openadsdk.core.Ln.oJ
                public void oJ(int i10, String str5) {
                    cFZ.oJ Pfn;
                    if (TTDelegateActivity.ex != null && TTDelegateActivity.ex.size() > 0 && !TextUtils.isEmpty(str3) && !com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                        cFZ.oJ oJVar = (cFZ.oJ) TTDelegateActivity.ex.get(str3);
                        if (oJVar != null) {
                            oJVar.oJ();
                        }
                    } else if (!TextUtils.isEmpty(str3) && (Pfn = com.bytedance.sdk.openadsdk.core.jFA.ZYk().Pfn(str3)) != null) {
                        Pfn.oJ();
                        com.bytedance.sdk.openadsdk.core.jFA.ZYk().ba(str3);
                    }
                    TTDelegateActivity.this.oJ(str3);
                    TTDelegateActivity.this.finish();
                }

                @Override // com.bytedance.sdk.openadsdk.core.Ln.oJ
                public void oJ() {
                    if (!((com.bytedance.sdk.openadsdk.tB.tB) TTDelegateActivity.this.tB).tB()) {
                        TTDelegateActivity.this.oJ(str3);
                        TTDelegateActivity.this.finish();
                    }
                    ((com.bytedance.sdk.openadsdk.tB.tB) TTDelegateActivity.this.tB).oJ(false);
                }
            });
        }
        Ln ln2 = this.tB;
        if (ln2 != null) {
            ln2.oJ();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(String str) {
        Map<String, cFZ.oJ> map = ex;
        if (map == null || TextUtils.isEmpty(str)) {
            return;
        }
        map.remove(str);
        if (awB.ex()) {
            map.size();
        }
    }
}
