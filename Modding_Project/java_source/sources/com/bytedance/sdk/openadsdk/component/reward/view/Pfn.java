package com.bytedance.sdk.openadsdk.component.reward.view;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.widget.eZI;
import com.bytedance.sdk.openadsdk.core.widget.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import com.startshorts.androidplayer.bean.shorts.SubtitleDataKt;
import java.lang.ref.WeakReference;
import java.util.Locale;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn extends com.bytedance.sdk.openadsdk.core.Pfn.Pfn {
    private TextView Pfn;
    private TextView ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private TextView f13047ba;
    private boolean cFZ;
    private si ex;
    private eZI oJ;

    /* renamed from: so  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.component.reward.oJ.oJ f13048so;
    private TextView tB;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ implements com.bytedance.sdk.component.Pfn.eZI {
        private final String ZYk;
        private final WeakReference<ImageView> ex;
        private final cY oJ;
        private final String tB;

        public oJ(ImageView imageView, cY cYVar, String str, String str2) {
            this.ex = new WeakReference<>(imageView);
            this.oJ = cYVar;
            this.ZYk = str;
            this.tB = str2;
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(com.bytedance.sdk.component.Pfn.dLZ dlz) {
            Object ZYk = dlz.ZYk();
            if (ZYk != null) {
                ImageView imageView = this.ex.get();
                if (ZYk instanceof Bitmap) {
                    if (imageView != null) {
                        imageView.setImageBitmap((Bitmap) ZYk);
                    }
                } else if (ZYk instanceof Drawable) {
                    if (Build.VERSION.SDK_INT >= 28 && b.a(ZYk)) {
                        c.a(ZYk).start();
                    }
                    if (imageView != null) {
                        imageView.setImageDrawable((Drawable) ZYk);
                    }
                }
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.oJ, this.tB, "load_vast_icon_success", (JSONObject) null);
            }
        }

        @Override // com.bytedance.sdk.component.Pfn.eZI
        public void oJ(int i10, String str, @Nullable Throwable th2) {
            oJ(i10, str, this.ZYk);
        }

        private void oJ(final int i10, final String str, final String str2) {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(new com.bytedance.sdk.component.so.so("load_vast_icon_fail") { // from class: com.bytedance.sdk.openadsdk.component.reward.view.Pfn.oJ.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, i10);
                        jSONObject.put(InMobiNetworkValues.DESCRIPTION, i10 + ":" + str);
                        jSONObject.put("url", str2);
                    } catch (Throwable unused) {
                    }
                    com.bytedance.sdk.openadsdk.ex.tB.ZYk(oJ.this.oJ, oJ.this.tB, "load_vast_icon_fail", jSONObject);
                }
            });
        }
    }

    public Pfn(@NonNull Context context) {
        super(context);
        setOrientation(1);
        setVisibility(8);
        setBackgroundColor(-1);
    }

    private void Pfn() {
        setOrientation(0);
        setGravity(16);
        Context context = getContext();
        setPadding(cdg.ZYk(context, 16.0f), cdg.ZYk(context, 12.0f), cdg.ZYk(context, 16.0f), cdg.ZYk(context, 12.0f));
        si siVar = new si(context);
        this.ex = siVar;
        siVar.setBackgroundColor(0);
        this.ex.setId(com.bytedance.sdk.openadsdk.utils.eZI.ZYk);
        addView(this.ex, new LinearLayout.LayoutParams(cdg.ZYk(context, 48.0f), cdg.ZYk(context, 48.0f)));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.leftMargin = cdg.ZYk(context, 12.0f);
        layoutParams.weight = 1.0f;
        addView(pfn, layoutParams);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.Pfn = soVar;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar.setEllipsize(truncateAt);
        this.Pfn.setGravity(16);
        this.Pfn.setSingleLine(true);
        this.Pfn.setTextSize(2, 17.0f);
        this.Pfn.setId(com.bytedance.sdk.openadsdk.utils.eZI.tB);
        this.Pfn.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        pfn.addView(this.Pfn, new LinearLayout.LayoutParams(-1, -2));
        eZI ezi = new eZI(context);
        this.oJ = ezi;
        ezi.setId(com.bytedance.sdk.openadsdk.utils.eZI.Pfn);
        pfn.addView(this.oJ, new LinearLayout.LayoutParams(-2, cdg.ZYk(context, 14.0f)));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.ZYk = soVar2;
        soVar2.setGravity(17);
        this.ZYk.setEllipsize(truncateAt);
        this.ZYk.setSingleLine(true);
        this.ZYk.setTextColor(-1);
        this.ZYk.setTextSize(2, 16.0f);
        this.ZYk.setId(520093705);
        this.ZYk.setBackground(oJ(context));
        this.ZYk.setText(this.f13048so.ZYk.ypD());
        addView(this.ZYk, new LinearLayout.LayoutParams(cdg.ZYk(context, 164.0f), cdg.ZYk(context, 36.0f)));
    }

    private void ba() {
        Context context = getContext();
        setPadding(cdg.ZYk(context, 16.0f), cdg.ZYk(context, 16.0f), cdg.ZYk(context, 16.0f), cdg.ZYk(context, 24.0f));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setOrientation(0);
        pfn.setGravity(16);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = cdg.ZYk(context, 12.0f);
        addView(pfn, layoutParams);
        si siVar = new si(context);
        this.ex = siVar;
        siVar.setBackgroundColor(0);
        this.ex.setId(com.bytedance.sdk.openadsdk.utils.eZI.ZYk);
        pfn.addView(this.ex, new LinearLayout.LayoutParams(cdg.ZYk(context, 48.0f), cdg.ZYk(context, 48.0f)));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.leftMargin = cdg.ZYk(context, 12.0f);
        pfn.addView(pfn2, layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.Pfn = soVar;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar.setEllipsize(truncateAt);
        this.Pfn.setGravity(16);
        this.Pfn.setSingleLine(true);
        this.Pfn.setTextSize(2, 17.0f);
        this.Pfn.setId(com.bytedance.sdk.openadsdk.utils.eZI.tB);
        this.Pfn.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        pfn2.addView(this.Pfn, new LinearLayout.LayoutParams(-1, -2));
        eZI ezi = new eZI(context);
        this.oJ = ezi;
        ezi.setId(com.bytedance.sdk.openadsdk.utils.eZI.Pfn);
        pfn2.addView(this.oJ, new LinearLayout.LayoutParams(-2, cdg.ZYk(context, 14.0f)));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.ZYk = soVar2;
        soVar2.setGravity(17);
        this.ZYk.setEllipsize(truncateAt);
        this.ZYk.setSingleLine(true);
        this.ZYk.setTextColor(-1);
        this.ZYk.setTextSize(2, 16.0f);
        this.ZYk.setId(520093705);
        this.ZYk.setBackground(oJ(context));
        this.ZYk.setText(this.f13048so.ZYk.ypD());
        addView(this.ZYk, new LinearLayout.LayoutParams(-1, cdg.ZYk(context, 36.0f)));
    }

    private void ex() {
        String ypD;
        this.cFZ = true;
        cY cYVar = this.f13048so.ZYk;
        int LS = cYVar.LS();
        if ((LS == 43 || LS == 44) && Ln.ZYk(cYVar)) {
            tB();
        } else if (this.f13048so.oTd == 1) {
            ba();
        } else {
            Pfn();
        }
        if (this.ZYk == null) {
            this.ZYk = (TextView) this.f13048so.f13027wd.findViewById(520093705);
        }
        TextView textView = this.ZYk;
        if (textView != null) {
            textView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.Pfn.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                    int width = ((ViewGroup) Pfn.this.ZYk.getParent()).getWidth();
                    if (width > 0) {
                        Pfn.this.ZYk.setMaxWidth((int) (width * 0.45f));
                    }
                }
            });
            if (cYVar.Br()) {
                if (cYVar.Du() != null && TextUtils.isEmpty(cYVar.Du().ba())) {
                    cdg.oJ((View) this.ZYk, 8);
                }
            } else {
                TextView textView2 = this.ZYk;
                if (cYVar.EP() == 3) {
                    ypD = getButtonTextForNewStyleBar();
                } else {
                    ypD = cYVar.ypD();
                }
                textView2.setText(ypD);
            }
        }
        if (this.ex != null && cYVar.Zjw() != null && !TextUtils.isEmpty(cYVar.Zjw().oJ())) {
            String oJ2 = cYVar.Zjw().oJ();
            if (cYVar.Br()) {
                com.bytedance.sdk.openadsdk.jFA.ex.oJ(cYVar.Zjw()).tB(1).oJ(new com.bytedance.sdk.openadsdk.jFA.ZYk(cYVar, cYVar.Zjw().oJ(), new oJ(this.ex, cYVar, oJ2, this.f13048so.Pfn)));
                if (cYVar.Du() != null && cYVar.Du().ZYk() != null) {
                    cYVar.Du().ZYk().ZYk(0L);
                }
            } else {
                com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(cYVar.Zjw(), this.ex, cYVar);
            }
        }
        TextView textView3 = this.Pfn;
        if (textView3 != null) {
            textView3.setText(cYVar.UUI());
        }
        TextView textView4 = this.f13047ba;
        if (textView4 != null) {
            textView4.setText(oJ(cYVar));
        }
        if (this.tB != null) {
            String Xe = Ln.Xe(this.f13048so.ZYk);
            if (TextUtils.isEmpty(Xe)) {
                Xe = "Play now";
            }
            this.tB.setText(Xe);
            this.tB.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.Pfn.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (Pfn.this.f13048so != null) {
                        com.bytedance.sdk.openadsdk.component.reward.oJ.oJ(Pfn.this.f13048so);
                    }
                }
            });
        }
        eZI ezi = this.oJ;
        if (ezi != null) {
            cdg.oJ((TextView) null, ezi, cYVar);
        }
        if (this.f13048so.oTd == 2 && cYVar.EP() == 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.ZYk.getLayoutParams();
            layoutParams.height = cdg.ZYk(this.f13048so.Rl, 55.0f);
            layoutParams.topMargin = cdg.ZYk(this.f13048so.Rl, 20.0f);
            this.ZYk.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) getLayoutParams();
            layoutParams2.bottomMargin = cdg.ZYk(this.f13048so.Rl, 12.0f);
            setLayoutParams(layoutParams2);
        }
        ZYk();
    }

    private String getCnOrEnBtnText() {
        if (this.f13048so.ZYk.sQ() != 4) {
            return "View";
        }
        return "Install";
    }

    protected String getButtonTextForNewStyleBar() {
        boolean z10;
        String ypD;
        String tB = HyG.tB(this.f13048so.Rl);
        if (tB == null) {
            tB = "";
        }
        try {
            z10 = tB.equals(Locale.ENGLISH.getLanguage());
        } catch (Throwable unused) {
            z10 = false;
        }
        if (TextUtils.isEmpty(this.f13048so.ZYk.ypD())) {
            ypD = this.f13048so.ZYk.sQ() != 4 ? "View" : "Install";
        } else {
            ypD = this.f13048so.ZYk.ypD();
            if (ypD != null && HyG.ba(ypD) && ypD.length() > 2) {
                if (z10) {
                    ypD = getCnOrEnBtnText();
                }
            } else if (ypD != null && !HyG.ba(ypD) && ypD.length() > 7 && z10) {
                ypD = getCnOrEnBtnText();
            }
        }
        if (z10 && !HyG.ba(ypD)) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.ZYk.getLayoutParams();
            layoutParams.bottomMargin = cdg.ZYk(this.f13048so.Rl, 4.0f);
            this.ZYk.setLayoutParams(layoutParams);
        }
        return ypD;
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        if (i10 == 0 && !this.cFZ) {
            ex();
        }
    }

    public void tB() {
        Context context = getContext();
        int ZYk = cdg.ZYk(context, 12.0f);
        setPadding(ZYk, ZYk, ZYk, ZYk);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        pfn.setOrientation(0);
        pfn.setGravity(16);
        addView(pfn, layoutParams);
        si siVar = new si(context);
        this.ex = siVar;
        siVar.setBackgroundColor(0);
        this.ex.setId(com.bytedance.sdk.openadsdk.utils.eZI.ZYk);
        pfn.addView(this.ex, new LinearLayout.LayoutParams(cdg.ZYk(context, 54.0f), cdg.ZYk(context, 54.0f)));
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn2 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.leftMargin = cdg.ZYk(context, 12.0f);
        pfn.addView(pfn2, layoutParams2);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.Pfn = soVar;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        soVar.setEllipsize(truncateAt);
        this.Pfn.setGravity(16);
        this.Pfn.setSingleLine(true);
        this.Pfn.setTextSize(2, 17.0f);
        this.Pfn.setId(com.bytedance.sdk.openadsdk.utils.eZI.tB);
        this.Pfn.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        pfn2.addView(this.Pfn, new LinearLayout.LayoutParams(-1, -2));
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar2 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.f13047ba = soVar2;
        soVar2.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.f13047ba.setTextSize(2, 13.0f);
        this.f13047ba.setMaxLines(2);
        this.f13047ba.setAlpha(0.8f);
        this.f13047ba.setEllipsize(truncateAt);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = cdg.ZYk(context, 4.0f);
        pfn2.addView(this.f13047ba, layoutParams3);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn3 = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.topMargin = cdg.ZYk(context, 12.0f);
        pfn3.setOrientation(0);
        addView(pfn3, layoutParams4);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar3 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.tB = soVar3;
        soVar3.setGravity(17);
        this.tB.setEllipsize(truncateAt);
        this.tB.setSingleLine(true);
        this.tB.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        this.tB.setTextSize(2, 16.0f);
        this.tB.setBackground(ZYk(context));
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, cdg.ZYk(context, 36.0f), 1.0f);
        layoutParams5.rightMargin = cdg.ZYk(context, 3.0f);
        pfn3.addView(this.tB, layoutParams5);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar4 = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.ZYk = soVar4;
        soVar4.setGravity(17);
        this.ZYk.setEllipsize(truncateAt);
        this.ZYk.setSingleLine(true);
        this.ZYk.setTextColor(-1);
        this.ZYk.setTextSize(2, 16.0f);
        this.ZYk.setId(520093705);
        this.ZYk.setBackground(tB(context));
        this.ZYk.setText(this.f13048so.ZYk.ypD());
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, cdg.ZYk(context, 36.0f), 1.0f);
        layoutParams6.leftMargin = cdg.ZYk(context, 3.0f);
        pfn3.addView(this.ZYk, layoutParams6);
    }

    private String oJ(cY cYVar) {
        if (!TextUtils.isEmpty(cYVar.UUI())) {
            return cYVar.UUI();
        }
        if (!TextUtils.isEmpty(cYVar.Amz())) {
            return cYVar.Amz();
        }
        return "";
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void ZYk() {
        com.bytedance.sdk.openadsdk.core.ZYk.Pfn Pfn = this.f13048so.IUZ.Pfn();
        final com.bytedance.sdk.openadsdk.core.ZYk.ZYk ex = this.f13048so.IUZ.ex();
        final cY cYVar = this.f13048so.ZYk;
        if (cYVar.YQ() == null) {
            return;
        }
        if (cYVar.EP() != 5 && this.ZYk != null) {
            if (cYVar.YQ().Pfn) {
                this.ZYk.setOnClickListener(Pfn);
                this.ZYk.setOnTouchListener(Pfn);
            } else {
                this.ZYk.setOnClickListener(ex);
            }
        }
        if (cYVar.EP() == 1) {
            if (cYVar.YQ().oJ) {
                cdg.oJ((View) this, (View.OnClickListener) Pfn, "TTBaseVideoActivity#mRlDownloadBar");
                cdg.oJ((View) this, (View.OnTouchListener) Pfn, "TTBaseVideoActivity#mRlDownloadBar");
                this.Pfn.setOnClickListener(Pfn);
                this.Pfn.setOnTouchListener(Pfn);
                this.oJ.setOnClickListener(Pfn);
                this.oJ.setOnTouchListener(Pfn);
                this.ex.setOnClickListener(Pfn);
                this.ex.setOnTouchListener(Pfn);
                return;
            }
            cdg.oJ((View) this, (View.OnClickListener) ex, "TTBaseVideoActivity#mRlDownloadBar");
            this.Pfn.setOnClickListener(ex);
            this.oJ.setOnClickListener(ex);
            this.ex.setOnClickListener(ex);
        } else if (cYVar.EP() == 5) {
            if (cYVar.YQ().Pfn) {
                com.bytedance.sdk.openadsdk.core.ZYk.cFZ cfz = new com.bytedance.sdk.openadsdk.core.ZYk.cFZ("VAST_ACTION_BUTTON", cYVar.Du(), Pfn) { // from class: com.bytedance.sdk.openadsdk.component.reward.view.Pfn.3
                };
                com.bytedance.sdk.openadsdk.core.ZYk.cFZ cfz2 = new com.bytedance.sdk.openadsdk.core.ZYk.cFZ("VAST_ICON", cYVar.Du(), Pfn) { // from class: com.bytedance.sdk.openadsdk.component.reward.view.Pfn.4
                };
                TextView textView = this.ZYk;
                if (textView != null) {
                    textView.setOnClickListener(cfz);
                    this.ZYk.setOnTouchListener(cfz);
                }
                si siVar = this.ex;
                if (siVar != null) {
                    siVar.setOnClickListener(cfz2);
                    this.ex.setOnTouchListener(cfz2);
                }
                TextView textView2 = this.Pfn;
                if (textView2 == null || TextUtils.isEmpty(textView2.getText())) {
                    return;
                }
                this.Pfn.setOnClickListener(cfz);
                this.Pfn.setOnTouchListener(cfz);
                return;
            }
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.Pfn.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    View.OnClickListener onClickListener2 = ex;
                    if (onClickListener2 != null) {
                        onClickListener2.onClick(view);
                    }
                    if (view != null && "VAST_ICON".equals(view.getTag(570425345))) {
                        if (cYVar.Du() != null && cYVar.Du().ZYk() != null) {
                            cYVar.Du().ZYk().oJ(Pfn.this.f13048so.cY.BTZ());
                        }
                    } else if (cYVar.Du() != null) {
                        cYVar.Du().oJ().cFZ(Pfn.this.f13048so.cY.BTZ());
                    }
                }
            };
            TextView textView3 = this.ZYk;
            if (textView3 != null) {
                textView3.setOnClickListener(onClickListener);
            }
            TextView textView4 = this.Pfn;
            if (textView4 != null && !TextUtils.isEmpty(textView4.getText())) {
                this.Pfn.setOnClickListener(onClickListener);
            }
            si siVar2 = this.ex;
            if (siVar2 != null) {
                siVar2.setTag(570425345, "VAST_ICON");
                this.ex.setOnClickListener(ex);
            }
        } else if (cYVar.YQ().tB) {
            cdg.oJ((View) this, (View.OnClickListener) Pfn, "TTBaseVideoActivity#mRlDownloadBar");
            cdg.oJ((View) this, (View.OnTouchListener) Pfn, "TTBaseVideoActivity#mRlDownloadBar");
        } else {
            cdg.oJ((View) this, (View.OnClickListener) ex, "TTBaseVideoActivity#mRlDownloadBar");
        }
    }

    public void oJ() {
        Keyframe ofFloat = Keyframe.ofFloat(0.0f, 0.0f);
        Keyframe ofFloat2 = Keyframe.ofFloat(0.65f, 1.0f);
        Keyframe ofFloat3 = Keyframe.ofFloat(0.765f, 0.9f);
        Keyframe ofFloat4 = Keyframe.ofFloat(0.88f, 1.0f);
        Keyframe ofFloat5 = Keyframe.ofFloat(0.95f, 0.95f);
        Keyframe ofFloat6 = Keyframe.ofFloat(1.0f, 1.0f);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofKeyframe("scaleX", ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5, ofFloat6), PropertyValuesHolder.ofKeyframe("scaleY", ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5, ofFloat6));
        ofPropertyValuesHolder.setDuration(1000L);
        ofPropertyValuesHolder.start();
    }

    public void oJ(com.bytedance.sdk.openadsdk.component.reward.oJ.oJ oJVar) {
        this.f13048so = oJVar;
        if (oJVar.ZYk.EP() == 1) {
            ex();
        }
    }

    private static Drawable oJ(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#1A73E8"));
        gradientDrawable.setCornerRadius(cdg.ZYk(context, 18.0f));
        return gradientDrawable;
    }

    private static Drawable ZYk(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor(SubtitleDataKt.DEFAULT_SUBTITLE_SHADOW_COLOR));
        gradientDrawable.setAlpha(30);
        gradientDrawable.setCornerRadius(cdg.ZYk(context, 8.0f));
        return gradientDrawable;
    }

    private static Drawable tB(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#FE2C55"));
        gradientDrawable.setCornerRadius(cdg.ZYk(context, 8.0f));
        return gradientDrawable;
    }
}
