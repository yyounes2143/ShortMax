package com.startshorts.androidplayer.ui.view.shortsV2.shortrating;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.ShortContentRatingInfo;
import com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import fk.z;
import jk.g;
import jk.y;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.m;
/* compiled from: ShortRatingLayout.kt */
@Metadata
@SourceDebugExtension({"SMAP\nShortRatingLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortRatingLayout.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1863#2,2:163\n1863#2,2:165\n*S KotlinDebug\n*F\n+ 1 ShortRatingLayout.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout\n*L\n125#1:163,2\n129#1:165,2\n*E\n"})
/* loaded from: classes7.dex */
public class ShortRatingLayout extends BaseConstraintLayout {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private LinearLayout f47914b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private TextView f47915c;

    /* compiled from: ShortRatingLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends z2.a<m> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CustomFrescoView f47916b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ShortRatingLayout f47917c;

        a(CustomFrescoView customFrescoView, ShortRatingLayout shortRatingLayout) {
            this.f47916b = customFrescoView;
            this.f47917c = shortRatingLayout;
        }

        @Override // z2.a, z2.b
        /* renamed from: g */
        public void d(String str, m mVar, Animatable animatable) {
            Integer num;
            super.d(str, mVar, animatable);
            Integer num2 = null;
            if (mVar != null) {
                num = Integer.valueOf(mVar.getWidth());
            } else {
                num = null;
            }
            if (mVar != null) {
                num2 = Integer.valueOf(mVar.getHeight());
            }
            if (num != null && num2 != null) {
                float intValue = num.intValue() / num2.intValue();
                ViewGroup.LayoutParams layoutParams = this.f47916b.getLayoutParams();
                layoutParams.width = (int) (intValue * this.f47917c.getMResizeHeight());
                this.f47916b.setLayoutParams(layoutParams);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortRatingLayout(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void v(ShortContentRatingInfo shortContentRatingInfo, LinearLayout linearLayout) {
        String ratingsAbbreviation;
        String icon = shortContentRatingInfo.getIcon();
        if ((icon == null || icon.length() == 0) && (ratingsAbbreviation = shortContentRatingInfo.getRatingsAbbreviation()) != null && ratingsAbbreviation.length() != 0) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            BaseTextView baseTextView = new BaseTextView(context);
            baseTextView.setText(String.valueOf(shortContentRatingInfo.getRatingsAbbreviation()));
            baseTextView.setTextColor(-1);
            baseTextView.setTextSize(2, getMRatingIconTextSize());
            y.n(baseTextView, yf.a.f70794a.a());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMarginEnd(getMRatingIconSpace());
            Unit unit = Unit.f60915a;
            linearLayout.addView(baseTextView, layoutParams);
            return;
        }
        CustomFrescoView customFrescoView = new CustomFrescoView(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, getMResizeHeight());
        layoutParams2.setMarginEnd(getMRatingIconSpace());
        Unit unit2 = Unit.f60915a;
        linearLayout.addView(customFrescoView, layoutParams2);
        f fVar = f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(shortContentRatingInfo.getIcon());
        frescoConfig.setControllerListener(new a(customFrescoView, this));
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(getMCornerRadius());
        fVar.A(customFrescoView, frescoConfig);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0048 A[LOOP:0: B:18:0x0042->B:20:0x0048, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void x(com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo r12) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout.x(com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo):void");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_short_rating;
    }

    public int getMCompanyNameLineSpacing() {
        return g.a(4.5f);
    }

    public int getMCompanyNameMarginStart() {
        return z.f51786a.s();
    }

    public float getMCompanyNameTextSize() {
        return 11.0f;
    }

    public float getMCornerRadius() {
        return g.b(4.0f);
    }

    public int getMRatingIconSpace() {
        return z.f51786a.m();
    }

    public float getMRatingIconTextSize() {
        return 13.0f;
    }

    public int getMResizeHeight() {
        return g.a(36.0f);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47914b = (LinearLayout) findViewById(R$id.rating_icon_ll);
        this.f47915c = (TextView) findViewById(R$id.content_desc_tv);
    }

    public final void w(@NotNull ShortPlayContentInfo shortPlayContentInfo) {
        Intrinsics.checkNotNullParameter(shortPlayContentInfo, "shortPlayContentInfo");
        x(shortPlayContentInfo);
    }

    public /* synthetic */ ShortRatingLayout(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortRatingLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
