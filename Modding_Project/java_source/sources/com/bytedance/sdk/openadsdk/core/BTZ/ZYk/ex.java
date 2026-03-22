package com.bytedance.sdk.openadsdk.core.BTZ.ZYk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.IUZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.core.widget.RZ;
import com.bytedance.sdk.openadsdk.core.widget.Ry;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.dLZ;
import com.bytedance.sdk.openadsdk.utils.eZI;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes3.dex */
public class ex extends Pfn {
    private ColorStateList BHY;
    private int Dex;
    private final View.OnTouchListener EP;
    private TextView HyG;
    private ImageView Jm;
    private ImageView LS;
    private int MoK;
    private final IUZ NO;
    private View Qu;
    private TextView Rl;
    private ColorStateList SCr;
    private float SWT;
    private int TA;
    private int UF;
    private final Rect UK;
    private float Uf;
    private final int VJm;
    private ColorStateList VSB;
    private float Wek;
    private TextView XAo;
    private float YQ;
    private View Yg;
    private final int bD;
    private TextView bgF;
    private TextView cdg;
    private final Rect eXp;
    private boolean jB;
    private float jXJ;
    private SeekBar lY;
    private TextView mwH;
    private ImageView nQI;
    private final Ry oCU;
    private int oIC;
    private TextView oTd;
    private ImageView ofl;
    private int sH;
    private final Rect uvK;

    /* renamed from: wd  reason: collision with root package name */
    private View f13076wd;
    private final Rect yQF;
    private boolean yz;
    private final Rect zGT;

    public ex(Context context, ViewGroup viewGroup, boolean z10, int i10, cY cYVar, com.bykv.vk.openvk.oJ.oJ.oJ.ex.tB tBVar, boolean z11) {
        super(context, viewGroup, z10, i10, cYVar, tBVar, z11);
        this.NO = new IUZ(this);
        this.jB = false;
        this.yz = false;
        this.sH = 0;
        this.Dex = 0;
        this.oIC = 0;
        this.MoK = 0;
        this.TA = 0;
        this.UK = new Rect();
        this.uvK = new Rect();
        this.UF = 0;
        this.EP = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ex.7
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 2) {
                    if (actionMasked == 3) {
                        view.getParent().requestDisallowInterceptTouchEvent(false);
                    }
                } else {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                }
                return false;
            }
        };
        this.zGT = new Rect();
        this.yQF = new Rect();
        this.eXp = new Rect();
        this.f13066tb = si.oJ().getApplicationContext();
        ex(z11);
        this.tB = viewGroup;
        this.f13063oq = z10;
        Ry ry = new Ry(this);
        this.oCU = ry;
        ry.oJ(this.f13063oq);
        DisplayMetrics displayMetrics = this.f13066tb.getResources().getDisplayMetrics();
        this.VJm = displayMetrics.widthPixels;
        this.bD = displayMetrics.heightPixels;
        this.f13061jr = i10;
        this.nke = tBVar;
        this.Xe = cYVar;
        ex(8);
        oJ(context, this.tB);
        ex();
        BTZ();
    }

    private void Xe() {
        DisplayMetrics displayMetrics = this.f13066tb.getResources().getDisplayMetrics();
        TextView textView = this.oTd;
        if (textView != null) {
            this.YQ = textView.getTextSize();
            this.oTd.setTextSize(2, 14.0f);
            ColorStateList textColors = this.oTd.getTextColors();
            this.BHY = textColors;
            if (textColors != null) {
                this.oTd.setTextColor(-1);
            }
            this.SWT = this.oTd.getAlpha();
            this.oTd.setAlpha(0.85f);
            this.oTd.setShadowLayer(0.0f, cdg.ZYk(this.f13066tb, 0.5f), cdg.ZYk(this.f13066tb, 0.5f), com.bytedance.sdk.component.utils.cY.cFZ(this.f13066tb, "tt_b2000000"));
            ViewGroup.LayoutParams layoutParams = this.oTd.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.zGT.set(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                cdg.oJ(this.oTd, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.zGT.top, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), this.zGT.bottom);
            }
        }
        TextView textView2 = this.mwH;
        if (textView2 != null) {
            this.Uf = textView2.getTextSize();
            this.mwH.setTextSize(2, 14.0f);
            ColorStateList textColors2 = this.mwH.getTextColors();
            this.SCr = textColors2;
            if (textColors2 != null) {
                this.mwH.setTextColor(-1);
            }
            this.Wek = this.mwH.getAlpha();
            this.mwH.setAlpha(0.85f);
            this.mwH.setShadowLayer(0.0f, cdg.ZYk(this.f13066tb, 0.5f), cdg.ZYk(this.f13066tb, 0.5f), com.bytedance.sdk.component.utils.cY.cFZ(this.f13066tb, "tt_b2000000"));
            ViewGroup.LayoutParams layoutParams2 = this.mwH.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                this.yQF.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                Rect rect = this.yQF;
                cdg.oJ(this.mwH, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), rect.top, rect.right, rect.bottom);
            }
        }
        ImageView imageView = this.LS;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams3;
                this.eXp.set(marginLayoutParams3.leftMargin, marginLayoutParams3.topMargin, marginLayoutParams3.rightMargin, marginLayoutParams3.bottomMargin);
                ImageView imageView2 = this.LS;
                Rect rect2 = this.eXp;
                cdg.oJ(imageView2, rect2.left, rect2.top, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.eXp.bottom);
            }
        }
        ImageView imageView3 = this.LS;
        if (imageView3 != null) {
            imageView3.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(this.f13066tb, "tt_shrink_fullscreen"));
        }
        TextView textView3 = this.cdg;
        if (textView3 != null) {
            ColorStateList textColors3 = textView3.getTextColors();
            this.VSB = textColors3;
            if (textColors3 != null) {
                this.cdg.setTextColor(-1);
            }
            this.jXJ = this.cdg.getAlpha();
            this.cdg.setAlpha(0.85f);
            ViewGroup.LayoutParams layoutParams4 = this.cdg.getLayoutParams();
            if (layoutParams4 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams4;
                this.uvK.set(marginLayoutParams4.leftMargin, marginLayoutParams4.topMargin, marginLayoutParams4.rightMargin, marginLayoutParams4.bottomMargin);
                Rect rect3 = this.yQF;
                cdg.oJ(this.cdg, (int) TypedValue.applyDimension(1, 1.0f, displayMetrics), rect3.top, rect3.right, rect3.bottom);
            }
        }
        View view = this.f13076wd;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams5 = view.getLayoutParams();
            this.UF = layoutParams5.height;
            layoutParams5.height = (int) TypedValue.applyDimension(1, 49.0f, displayMetrics);
            this.f13076wd.setLayoutParams(layoutParams5);
            this.f13076wd.setBackgroundResource(com.bytedance.sdk.component.utils.cY.ex(this.f13066tb, "tt_shadow_fullscreen_top"));
        }
        ZYk(false, true);
    }

    private void tb() {
        TextView textView = this.oTd;
        if (textView != null) {
            textView.setTextSize(0, this.YQ);
            ColorStateList colorStateList = this.BHY;
            if (colorStateList != null) {
                this.oTd.setTextColor(colorStateList);
            }
            this.oTd.setAlpha(this.SWT);
            this.oTd.setShadowLayer(cdg.ZYk(this.f13066tb, 1.0f), 0.0f, 0.0f, com.bytedance.sdk.component.utils.cY.cFZ(this.f13066tb, "tt_72000000"));
            TextView textView2 = this.oTd;
            Rect rect = this.zGT;
            cdg.oJ(textView2, rect.left, rect.top, rect.right, rect.bottom);
        }
        TextView textView3 = this.mwH;
        if (textView3 != null) {
            textView3.setTextSize(0, this.Uf);
            ColorStateList colorStateList2 = this.SCr;
            if (colorStateList2 != null) {
                this.mwH.setTextColor(colorStateList2);
            }
            this.mwH.setAlpha(this.Wek);
            this.mwH.setShadowLayer(cdg.ZYk(this.f13066tb, 1.0f), 0.0f, 0.0f, com.bytedance.sdk.component.utils.cY.cFZ(this.f13066tb, "tt_72000000"));
            TextView textView4 = this.mwH;
            Rect rect2 = this.yQF;
            cdg.oJ(textView4, rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        ImageView imageView = this.LS;
        if (imageView != null) {
            Rect rect3 = this.eXp;
            cdg.oJ(imageView, rect3.left, rect3.top, rect3.right, rect3.bottom);
        }
        ImageView imageView2 = this.LS;
        if (imageView2 != null) {
            imageView2.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(this.f13066tb, "tt_enlarge_video"));
        }
        TextView textView5 = this.cdg;
        if (textView5 != null) {
            ColorStateList colorStateList3 = this.VSB;
            if (colorStateList3 != null) {
                textView5.setTextColor(colorStateList3);
            }
            this.cdg.setAlpha(this.jXJ);
            TextView textView6 = this.cdg;
            Rect rect4 = this.yQF;
            cdg.oJ(textView6, rect4.left, rect4.top, rect4.right, rect4.bottom);
        }
        View view = this.f13076wd;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = this.UF;
            this.f13076wd.setLayoutParams(layoutParams);
            this.f13076wd.setBackground(dLZ.oJ(this.f13066tb, "tt_video_black_desc_gradient"));
        }
        ZYk(false, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void Pfn() {
        this.NO.removeMessages(1);
        this.NO.sendMessageDelayed(this.NO.obtainMessage(1), 2000L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void ZYk(boolean z10) {
        int i10 = kkU() ? this.bD : this.f13064si;
        int i11 = kkU() ? this.VJm : this.Ry;
        if (this.QSm <= 0 || this.RZ <= 0 || i10 <= 0) {
            return;
        }
        if (!oq() && !kkU() && (this.f13061jr & 8) != 8) {
            i11 = cdg.ZYk(this.f13066tb, 228.0f);
        }
        int i12 = this.RZ;
        int i13 = this.QSm;
        int i14 = (int) (i13 * ((i10 * 1.0f) / i12));
        if (i14 > i11) {
            i10 = (int) (i12 * ((i11 * 1.0f) / i13));
        } else {
            i11 = i14;
        }
        if (!z10 && !kkU()) {
            i10 = this.f13064si;
            i11 = this.Ry;
        }
        this.ex.oJ(i10, i11);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void ba() {
        this.NO.removeMessages(1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void cFZ() {
        cY cYVar;
        cdg.ba(this.f13060ba);
        cdg.ba(this.cFZ);
        cdg.Pfn(this.Qu);
        if (this.f13065so != null && (cYVar = this.Xe) != null && cYVar.ib() != null && this.Xe.ib().kkU() != null) {
            cdg.ba(this.f13065so);
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.Xe.ib().kkU(), this.Xe.ib().tB(), this.Xe.ib().ZYk(), this.f13065so, this.Xe);
        }
        if (this.Pfn.getVisibility() == 0) {
            cdg.oJ((View) this.Pfn, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn, com.bytedance.sdk.openadsdk.core.widget.RZ.ZYk
    public void dLZ() {
        oJ(true, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    @SuppressLint({"ClickableViewAccessibility"})
    public void ex() {
        int i10;
        super.ex();
        this.oCU.oJ(this.tB);
        ImageView imageView = this.ofl;
        int i11 = 8;
        if (!this.f13063oq && (this.f13061jr & 1) != 1) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        cdg.oJ((View) imageView, i10);
        this.ofl.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ex.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ex.this.eZI()) {
                    ex exVar = ex.this;
                    exVar.IUZ.tB(exVar, view);
                }
            }
        });
        TextView textView = this.XAo;
        if (!this.f13063oq || (this.f13061jr & 2) == 2) {
            i11 = 0;
        }
        cdg.oJ((View) textView, i11);
        this.XAo.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ex.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ex.this.eZI()) {
                    ex exVar = ex.this;
                    exVar.IUZ.ex(exVar, view);
                }
            }
        });
        this.Jm.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ex.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ex.this.eZI()) {
                    ex exVar = ex.this;
                    exVar.IUZ.Pfn(exVar, view);
                }
            }
        });
        this.nQI.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ex.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ex.this.ZYk(false, true);
                ex.this.so();
                ex.this.cFZ();
                ex.this.eZI();
            }
        });
        this.LS.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ex.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ex.this.eZI()) {
                    ex exVar = ex.this;
                    exVar.IUZ.ZYk(exVar, view);
                }
            }
        });
        this.lY.setThumbOffset(0);
        this.lY.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ex.6
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i12, boolean z10) {
                if (ex.this.eZI()) {
                    ex exVar = ex.this;
                    exVar.IUZ.oJ(exVar, i12, z10);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (!ex.this.jB && ex.this.f13066tb != null) {
                    seekBar.setThumb(dLZ.oJ(si.oJ(), "tt_seek_thumb_press"));
                }
                if (ex.this.eZI()) {
                    seekBar.setThumbOffset(0);
                    ex exVar = ex.this;
                    exVar.IUZ.ZYk(exVar, seekBar.getProgress());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (!ex.this.jB && ex.this.f13066tb != null) {
                    seekBar.setThumb(dLZ.oJ(si.oJ(), "tt_seek_thumb_normal"));
                }
                if (ex.this.eZI()) {
                    seekBar.setThumbOffset(0);
                    ex exVar = ex.this;
                    exVar.IUZ.oJ(exVar, seekBar.getProgress());
                }
            }
        });
        this.lY.setOnTouchListener(this.EP);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void jFA() {
        this.lY.setProgress(0);
        this.lY.setSecondaryProgress(0);
        this.mwH.setText(com.bytedance.sdk.component.utils.cY.oJ(this.f13066tb, "tt_00_00"));
        this.oTd.setText(com.bytedance.sdk.component.utils.cY.oJ(this.f13066tb, "tt_00_00"));
        ex(8);
        if (jr()) {
            this.ex.setVisibility(8);
        }
        ImageView imageView = this.f13065so;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        ex(8);
        cdg.oJ(this.Yg, 8);
        cdg.oJ(this.kkU, 8);
        cdg.oJ((View) this.dLZ, 8);
        cdg.oJ(this.BTZ, 8);
        cdg.oJ((View) this.PiB, 8);
        cdg.oJ((View) this.WcQ, 8);
        cdg.oJ((View) this.awB, 8);
        RZ rz = this.HL;
        if (rz != null) {
            rz.oJ(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn, com.bytedance.sdk.openadsdk.core.widget.RZ.ZYk
    public boolean kkU() {
        return this.jB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn, com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk
    @SuppressLint({"ClickableViewAccessibility"})
    public /* bridge */ /* synthetic */ void oJ(cY cYVar, WeakReference weakReference, boolean z10) {
        oJ(cYVar, (WeakReference<Context>) weakReference, z10);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void so() {
        cdg.Pfn(this.f13060ba);
        cdg.Pfn(this.Qu);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void tB(boolean z10) {
        int i10;
        TextView textView = this.HyG;
        if (textView != null) {
            if (!this.f13063oq && z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            cdg.oJ((View) textView, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void oJ(Context context, View view) {
        super.oJ(context, view);
        this.XAo = (TextView) view.findViewById(eZI.Wd);
        this.ofl = (ImageView) view.findViewById(eZI.yB);
        this.f13076wd = view.findViewById(eZI.uaj);
        this.Jm = (ImageView) view.findViewById(eZI.LE);
        this.HyG = (TextView) view.findViewById(eZI.f13420uq);
        this.cdg = (TextView) view.findViewById(eZI.WGj);
        this.Rl = (TextView) view.findViewById(eZI.Amz);
        this.Qu = view.findViewById(eZI.Zjw);
        this.nQI = (ImageView) view.findViewById(eZI.XSu);
        TextView textView = (TextView) view.findViewById(eZI.Oof);
        this.bgF = textView;
        textView.setText(com.bytedance.sdk.component.utils.cY.oJ(context, "tt_video_retry_des_txt"));
        this.lY = (SeekBar) view.findViewById(eZI.edj);
        this.mwH = (TextView) view.findViewById(eZI.eW);
        this.oTd = (TextView) view.findViewById(eZI.SB);
        this.Yg = view.findViewById(eZI.ypD);
        this.LS = (ImageView) view.findViewById(eZI.dZS);
        this.jFA = view.findViewById(eZI.MVA);
    }

    private void Pfn(boolean z10) {
        if (z10) {
            Xe();
        } else {
            tb();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void ZYk(@Nullable ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        if (viewGroup == null || (viewGroup2 = this.tB) == null || !(viewGroup2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        this.jB = false;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.tB.getLayoutParams();
        marginLayoutParams.width = this.oIC;
        marginLayoutParams.height = this.MoK;
        marginLayoutParams.leftMargin = this.Dex;
        marginLayoutParams.topMargin = this.sH;
        this.tB.setLayoutParams(marginLayoutParams);
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.addRule(3, this.TA);
            viewGroup.setLayoutParams(layoutParams2);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            Rect rect = this.UK;
            cdg.oJ(viewGroup, rect.left, rect.top, rect.right, rect.bottom);
        }
        ZYk(true);
        this.LS.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(this.f13066tb, "tt_enlarge_video"));
        this.lY.setThumb(dLZ.oJ(this.f13066tb, "tt_seek_thumb_normal"));
        this.lY.setThumbOffset(0);
        com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ((View) this.tB, true);
        Pfn(this.jB);
        cdg.oJ(this.f13076wd, 8);
        if ((this.f13061jr & 2) == 2) {
            cdg.oJ((View) this.XAo, 0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void oJ(String str) {
        TextView textView = this.HyG;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.cdg;
        if (textView2 != null) {
            textView2.setText(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void oJ(int i10) {
        View view = this.Yg;
        if (view == null || view.getVisibility() != 0) {
            this.lY.setProgress(i10);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void oJ(long j10, long j11) {
        this.mwH.setText(com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(j11));
        this.oTd.setText(com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(j10));
        this.lY.setProgress(com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(j10, j11));
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn, com.bykv.vk.openvk.oJ.oJ.oJ.ex.ZYk
    public void oJ() {
        oJ(false, this.f13063oq);
        RZ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void oJ(long j10) {
        this.oTd.setText(com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ(j10));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    @SuppressLint({"ClickableViewAccessibility"})
    public void oJ(cY cYVar, WeakReference<Context> weakReference, boolean z10) {
        String str;
        String oJ;
        cY cYVar2;
        if (cYVar == null) {
            return;
        }
        oJ(this.tB, si.oJ());
        oJ(false, this.f13063oq);
        cdg.oJ(this.kkU, 0);
        cdg.oJ((View) this.dLZ, 0);
        cdg.oJ(this.BTZ, 0);
        if (this.dLZ != null && (cYVar2 = this.Xe) != null && cYVar2.ib() != null && this.Xe.ib().kkU() != null) {
            com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.Xe.ib().kkU(), this.Xe.ib().tB(), this.Xe.ib().ZYk(), this.dLZ, this.Xe);
        }
        if (!TextUtils.isEmpty(cYVar.Qzd())) {
            str = cYVar.Qzd();
        } else if (!TextUtils.isEmpty(cYVar.UUI())) {
            str = cYVar.UUI();
        } else if (!TextUtils.isEmpty(cYVar.Amz())) {
            str = cYVar.Amz();
        } else {
            str = "";
        }
        cY cYVar3 = this.Xe;
        if (cYVar3 != null && cYVar3.Zjw() != null && this.Xe.Zjw().oJ() != null) {
            cdg.oJ((View) this.PiB, 0);
            cdg.oJ((View) this.WcQ, 4);
            if (this.PiB != null) {
                com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().oJ(this.Xe.Zjw(), this.PiB, cYVar);
                this.PiB.setOnClickListener(this.Jc);
                this.PiB.setOnTouchListener(this.Jc);
            }
        } else if (!TextUtils.isEmpty(str)) {
            cdg.oJ((View) this.PiB, 4);
            cdg.oJ((View) this.WcQ, 0);
            TextView textView = this.WcQ;
            if (textView != null) {
                textView.setText(str.substring(0, 1));
                this.WcQ.setOnClickListener(this.Jc);
                this.WcQ.setOnTouchListener(this.Jc);
            }
        }
        if (this.awB != null && !TextUtils.isEmpty(str)) {
            this.awB.setText(str);
        }
        cdg.oJ((View) this.awB, 0);
        cdg.oJ((View) this.eZI, 0);
        int sQ = cYVar.sQ();
        if (sQ == 4) {
            oJ = com.bytedance.sdk.component.utils.cY.oJ(this.f13066tb, "tt_video_download_apk");
        } else if (sQ != 5) {
            oJ = com.bytedance.sdk.component.utils.cY.oJ(this.f13066tb, "tt_video_mobile_go_detail");
        } else {
            oJ = com.bytedance.sdk.component.utils.cY.oJ(this.f13066tb, "tt_video_dial_phone");
        }
        TextView textView2 = this.eZI;
        if (textView2 != null) {
            textView2.setText(oJ);
            this.eZI.setOnClickListener(this.Jc);
            this.eZI.setOnTouchListener(this.Jc);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public boolean ZYk(int i10) {
        SeekBar seekBar = this.lY;
        return seekBar != null && i10 > seekBar.getSecondaryProgress();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void oJ(@Nullable ViewGroup viewGroup) {
        if (viewGroup != null && (this.tB.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            this.jB = true;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.tB.getLayoutParams();
            this.Dex = marginLayoutParams.leftMargin;
            this.sH = marginLayoutParams.topMargin;
            this.oIC = marginLayoutParams.width;
            this.MoK = marginLayoutParams.height;
            marginLayoutParams.width = -1;
            marginLayoutParams.height = -1;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.leftMargin = 0;
            this.tB.setLayoutParams(marginLayoutParams);
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                int[] rules = layoutParams2.getRules();
                this.TA = rules.length > 0 ? rules[3] : 0;
                layoutParams2.addRule(3, 0);
                viewGroup.setLayoutParams(layoutParams2);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                this.UK.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                cdg.oJ(viewGroup, 0, 0, 0, 0);
            }
            ZYk(true);
            this.LS.setImageDrawable(com.bytedance.sdk.component.utils.cY.tB(this.f13066tb, "tt_shrink_video"));
            this.lY.setThumb(dLZ.oJ(this.f13066tb, "tt_seek_thumb_fullscreen_selector"));
            this.lY.setThumbOffset(0);
            com.bykv.vk.openvk.oJ.oJ.ZYk.ex.oJ.oJ((View) this.tB, false);
            Pfn(this.jB);
            cdg.oJ(this.f13076wd, 8);
            if (!this.f13063oq) {
                cdg.oJ((View) this.ofl, 8);
                cdg.oJ((View) this.XAo, 8);
            } else if ((this.f13061jr & 1) == 1) {
                cdg.oJ((View) this.ofl, 8);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn, com.bytedance.sdk.component.utils.IUZ.oJ
    public void oJ(Message message) {
        if (message.what != 1) {
            return;
        }
        dLZ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void oJ(boolean z10, boolean z11, boolean z12) {
        cdg.oJ(this.Yg, 0);
        if (this.jB) {
            cdg.oJ(this.f13076wd, 0);
            cdg.oJ((View) this.cdg, 0);
        } else if (z12) {
            cdg.oJ(this.f13076wd, 8);
        }
        cdg.oJ((View) this.Pfn, (!z10 || this.f13060ba.getVisibility() == 0) ? 8 : 0);
        if (!this.f13063oq && !this.jB) {
            if ((this.f13061jr & 1) != 1 && !z12) {
                cdg.oJ((View) this.ofl, 0);
            }
            cdg.oJ((View) this.XAo, z12 ? 8 : 0);
        }
        cdg.oJ((View) this.mwH, 0);
        cdg.oJ((View) this.oTd, 0);
        cdg.oJ((View) this.lY, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn
    public void oJ(boolean z10, boolean z11) {
        cdg.oJ(this.Yg, 8);
        cdg.oJ(this.f13076wd, 8);
        cdg.oJ((View) this.Pfn, 8);
        if (!this.f13063oq && !this.jB) {
            cdg.oJ((View) this.ofl, 8);
            if ((this.f13061jr & 2) != 2) {
                cdg.oJ((View) this.XAo, 8);
            }
        } else if ((this.f13061jr & 1) == 1) {
            cdg.oJ((View) this.ofl, 8);
        }
        if (z11) {
            cdg.oJ((View) this.ofl, 8);
            cdg.oJ((View) this.XAo, 8);
        }
        tB(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.BTZ.ZYk.Pfn, com.bytedance.sdk.openadsdk.core.widget.Ry.oJ
    public void oJ(View view, boolean z10) {
        if (kkU()) {
            String format = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date());
            cY cYVar = this.Xe;
            if (cYVar != null && !TextUtils.isEmpty(cYVar.UUI())) {
                oJ(this.Xe.UUI());
            }
            this.Rl.setText(format);
        } else {
            oJ("");
            this.Rl.setText("");
        }
        if (this.Ln) {
            return;
        }
        tB(this.f13063oq && !this.jB);
        if (eZI()) {
            this.IUZ.oJ(this, view, true, this.f13060ba.getVisibility() != 0);
        }
    }
}
