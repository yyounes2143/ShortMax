package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.TextView;
import com.ss.ttm.player.MediaFormat;
import java.text.DecimalFormat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes3.dex */
public class Xe extends ba {
    public Xe(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        this.f12680so += 6;
        if (this.BTZ.wd()) {
            com.bytedance.sdk.component.adexpress.ba.oJ oJVar = new com.bytedance.sdk.component.adexpress.ba.oJ(context, this.BTZ.cFZ(), this.BTZ.Pfn(), 1, this.BTZ.so());
            this.awB = oJVar;
            oJVar.setMaxLines(1);
        } else {
            TextView textView = new TextView(context);
            this.awB = textView;
            textView.setIncludeFontPadding(false);
        }
        this.awB.setTag(Integer.valueOf(getClickArea()));
        addView(this.awB, getWidgetLayoutParams());
    }

    private void dLZ() {
        if (!(this.awB instanceof com.bytedance.sdk.component.adexpress.ba.oJ)) {
            return;
        }
        String text = getText();
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(text);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                arrayList.add(jSONArray.optString(i10));
            }
        } catch (JSONException unused) {
            arrayList.add(text);
        }
        ((com.bytedance.sdk.component.adexpress.ba.oJ) this.awB).setMaxLines(1);
        ((com.bytedance.sdk.component.adexpress.ba.oJ) this.awB).setTextColor(this.BTZ.cFZ());
        ((com.bytedance.sdk.component.adexpress.ba.oJ) this.awB).setTextSize(this.BTZ.Pfn());
        ((com.bytedance.sdk.component.adexpress.ba.oJ) this.awB).setAnimationText(arrayList);
        ((com.bytedance.sdk.component.adexpress.ba.oJ) this.awB).setAnimationType(this.BTZ.cdg());
        ((com.bytedance.sdk.component.adexpress.ba.oJ) this.awB).setAnimationDuration(this.BTZ.HyG() * 1000);
        ((com.bytedance.sdk.component.adexpress.ba.oJ) this.awB).oJ();
    }

    private void kkU() {
        int oJ;
        if (TextUtils.equals(this.PiB.kkU().ZYk(), "source") || TextUtils.equals(this.PiB.kkU().ZYk(), "title") || TextUtils.equals(this.PiB.kkU().ZYk(), "text_star")) {
            int[] ZYk = com.bytedance.sdk.component.adexpress.dynamic.Pfn.dLZ.ZYk(this.BTZ.ba(), this.BTZ.Pfn(), true);
            int oJ2 = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), this.BTZ.ZYk());
            int oJ3 = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), this.BTZ.tB());
            int oJ4 = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), this.BTZ.ex());
            int oJ5 = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), this.BTZ.oJ());
            int min = Math.min(oJ2, oJ5);
            if (TextUtils.equals(this.PiB.kkU().ZYk(), "source") && (oJ = ((this.f12680so - ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), this.BTZ.Pfn()))) - oJ2) - oJ5) > 1 && oJ <= min * 2) {
                int i10 = oJ / 2;
                this.awB.setPadding(oJ3, oJ2 - i10, oJ4, oJ5 - (oJ - i10));
                return;
            }
            int i11 = (((ZYk[1] + oJ2) + oJ5) - this.f12680so) - 2;
            if (i11 <= 1) {
                return;
            }
            if (i11 <= min * 2) {
                int i12 = i11 / 2;
                this.awB.setPadding(oJ3, oJ2 - i12, oJ4, oJ5 - (i11 - i12));
            } else if (i11 <= oJ2 + oJ5) {
                if (oJ2 > oJ5) {
                    this.awB.setPadding(oJ3, oJ2 - (i11 - min), oJ4, oJ5 - min);
                } else {
                    this.awB.setPadding(oJ3, oJ2 - min, oJ4, oJ5 - (i11 - min));
                }
            } else {
                final int i13 = (i11 - oJ2) - oJ5;
                this.awB.setPadding(oJ3, 0, oJ4, 0);
                if (i13 <= ((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), 1.0f)) + 1) {
                    ((TextView) this.awB).setTextSize(this.BTZ.Pfn() - 1.0f);
                } else if (i13 <= (((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), 1.0f)) + 1) * 2) {
                    ((TextView) this.awB).setTextSize(this.BTZ.Pfn() - 2.0f);
                } else {
                    post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Xe.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ViewGroup.LayoutParams layoutParams = Xe.this.awB.getLayoutParams();
                                Xe xe2 = Xe.this;
                                layoutParams.height = xe2.f12680so + i13;
                                xe2.awB.setLayoutParams(layoutParams);
                                Xe.this.awB.setTranslationY(-i13);
                                ((ViewGroup) Xe.this.awB.getParent()).setClipChildren(false);
                                ((ViewGroup) Xe.this.awB.getParent().getParent()).setClipChildren(false);
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
            }
        }
        if (TextUtils.equals(this.PiB.kkU().ZYk(), "fillButton")) {
            this.awB.setTextAlignment(2);
            ((TextView) this.awB).setGravity(17);
        }
    }

    private boolean oJ() {
        DynamicRootView dynamicRootView = this.WcQ;
        return (dynamicRootView == null || dynamicRootView.getRenderRequest() == null || this.WcQ.getRenderRequest().kkU() == 4) ? false : true;
    }

    public String getText() {
        String ba2 = this.BTZ.ba();
        if (TextUtils.isEmpty(ba2)) {
            if (!com.bytedance.sdk.component.adexpress.ex.ZYk() && TextUtils.equals(this.PiB.kkU().ZYk(), "text_star")) {
                ba2 = "5";
            }
            if (!com.bytedance.sdk.component.adexpress.ex.ZYk() && TextUtils.equals(this.PiB.kkU().ZYk(), "score-count")) {
                ba2 = "6870";
            }
        }
        if (TextUtils.equals(this.PiB.kkU().ZYk(), "title") || TextUtils.equals(this.PiB.kkU().ZYk(), MediaFormat.KEY_SUBTITLE)) {
            return ba2.replace("\n", "");
        }
        return ba2;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        int i10;
        double d10;
        super.jFA();
        if (TextUtils.isEmpty(getText())) {
            this.awB.setVisibility(4);
            return true;
        } else if (this.BTZ.wd()) {
            dLZ();
            return true;
        } else {
            ((TextView) this.awB).setText(this.BTZ.ba());
            ((TextView) this.awB).setTextDirection(5);
            this.awB.setTextAlignment(this.BTZ.so());
            ((TextView) this.awB).setTextColor(this.BTZ.cFZ());
            ((TextView) this.awB).setTextSize(this.BTZ.Pfn());
            if (!this.BTZ.Id()) {
                ((TextView) this.awB).setMaxLines(1);
                ((TextView) this.awB).setGravity(17);
                ((TextView) this.awB).setEllipsize(TextUtils.TruncateAt.END);
            } else {
                int cY = this.BTZ.cY();
                if (cY > 0) {
                    ((TextView) this.awB).setLines(cY);
                    ((TextView) this.awB).setEllipsize(TextUtils.TruncateAt.END);
                }
            }
            com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar = this.PiB;
            if (soVar != null && soVar.kkU() != null) {
                if (com.bytedance.sdk.component.adexpress.ex.ZYk() && oJ() && (TextUtils.equals(this.PiB.kkU().ZYk(), "text_star") || TextUtils.equals(this.PiB.kkU().ZYk(), "score-count") || TextUtils.equals(this.PiB.kkU().ZYk(), "score-count-type-1") || TextUtils.equals(this.PiB.kkU().ZYk(), "score-count-type-2"))) {
                    setVisibility(8);
                    return true;
                }
                if (!TextUtils.equals(this.PiB.kkU().ZYk(), "score-count") && !TextUtils.equals(this.PiB.kkU().ZYk(), "score-count-type-2")) {
                    if (TextUtils.equals(this.PiB.kkU().ZYk(), "text_star")) {
                        try {
                            d10 = Double.parseDouble(getText());
                        } catch (Exception unused) {
                            d10 = -1.0d;
                        }
                        if (d10 < 0.0d || d10 > 5.0d) {
                            if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                                setVisibility(8);
                                return true;
                            }
                            this.awB.setVisibility(0);
                        }
                        ((TextView) this.awB).setIncludeFontPadding(false);
                        ((TextView) this.awB).setText(String.format("%.1f", Double.valueOf(d10)));
                    } else if (TextUtils.equals("privacy-detail", this.PiB.kkU().ZYk())) {
                        ((TextView) this.awB).setText("Permission list | Privacy policy");
                    } else if (TextUtils.equals(this.PiB.kkU().ZYk(), "development-name")) {
                        ((TextView) this.awB).setText(com.bytedance.sdk.component.utils.cY.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), "tt_text_privacy_development") + getText());
                    } else if (TextUtils.equals(this.PiB.kkU().ZYk(), "app-version")) {
                        ((TextView) this.awB).setText(com.bytedance.sdk.component.utils.cY.oJ(com.bytedance.sdk.component.adexpress.ex.oJ(), "tt_text_privacy_app_version") + getText());
                    } else {
                        ((TextView) this.awB).setText(getText());
                    }
                } else {
                    try {
                        try {
                            i10 = Integer.parseInt(getText());
                        } catch (NumberFormatException unused2) {
                            i10 = -1;
                        }
                        if (i10 < 0) {
                            if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                                setVisibility(8);
                                return true;
                            }
                            this.awB.setVisibility(0);
                        }
                        if (TextUtils.equals(this.PiB.kkU().ZYk(), "score-count-type-2")) {
                            ((TextView) this.awB).setText(String.format(new DecimalFormat("(###,###,###)").format(i10), Integer.valueOf(i10)));
                            ((TextView) this.awB).setGravity(17);
                            return true;
                        }
                        oJ((TextView) this.awB, i10, getContext(), "tt_comment_num");
                    } catch (Exception unused3) {
                    }
                }
                this.awB.setTextAlignment(this.BTZ.so());
                ((TextView) this.awB).setGravity(this.BTZ.jFA());
                if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    kkU();
                }
            }
            return true;
        }
    }

    public void oJ(TextView textView, int i10, Context context, String str) {
        String format = String.format(com.bytedance.sdk.component.utils.cY.oJ(context, str), Integer.valueOf(i10));
        textView.setText("(" + format + ")");
        if (i10 == -1) {
            textView.setVisibility(8);
        }
    }
}
