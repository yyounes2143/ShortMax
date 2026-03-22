package com.applovin.impl;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.b3;
import com.applovin.impl.o2;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.R;
/* loaded from: classes2.dex */
public class w3 extends o2 {

    /* renamed from: n  reason: collision with root package name */
    private final b3 f10461n;

    /* renamed from: o  reason: collision with root package name */
    private final Context f10462o;

    public w3(b3 b3Var, Context context) {
        super(o2.c.DETAIL);
        this.f10461n = b3Var;
        this.f10462o = context;
        this.f9076c = t();
        this.f9077d = s();
    }

    private SpannedString q() {
        if (this.f10461n.A()) {
            if (!TextUtils.isEmpty(this.f10461n.c())) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("ADAPTER  ", -7829368));
                spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.f10461n.c(), ViewCompat.MEASURED_STATE_MASK));
                if (this.f10461n.B()) {
                    spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("  LATEST  ", m0.a(R.color.applovin_sdk_orangeColor, this.f10462o)));
                    spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.f10461n.k(), ViewCompat.MEASURED_STATE_MASK));
                }
                if (!this.f10461n.C()) {
                    spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
                    spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("INCOMPATIBLE WITH MAX SDK VERSION", SupportMenu.CATEGORY_MASK));
                }
                return new SpannedString(spannableStringBuilder);
            }
            return StringUtils.createListItemDetailSpannedString("Adapter Found", ViewCompat.MEASURED_STATE_MASK);
        }
        return StringUtils.createListItemDetailSpannedString("Adapter Missing", SupportMenu.CATEGORY_MASK);
    }

    private SpannedString s() {
        if (!o()) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) u());
        spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
        spannableStringBuilder.append((CharSequence) q());
        if (this.f10461n.q() == b3.a.INVALID_INTEGRATION) {
            spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString("Invalid Integration", SupportMenu.CATEGORY_MASK));
        } else if (this.f10461n.q() == b3.a.INCOMPLETE_INTEGRATION && this.f10461n.F()) {
            spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString("Mismatched SDK/Adapter Versions", SupportMenu.CATEGORY_MASK));
        }
        return new SpannedString(spannableStringBuilder);
    }

    private SpannedString t() {
        int i10;
        if (o()) {
            i10 = ViewCompat.MEASURED_STATE_MASK;
        } else {
            i10 = -7829368;
        }
        return StringUtils.createSpannedString(this.f10461n.g(), i10, 18, 1);
    }

    private SpannedString u() {
        String str;
        if (this.f10461n.G()) {
            if (StringUtils.isValidString(this.f10461n.p())) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("SDK\t\t\t\t\t  ", -7829368));
                spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.f10461n.p(), ViewCompat.MEASURED_STATE_MASK));
                return new SpannedString(spannableStringBuilder);
            }
            if (this.f10461n.A()) {
                str = "Retrieving SDK Version...";
            } else {
                str = "SDK Found";
            }
            return StringUtils.createListItemDetailSpannedString(str, ViewCompat.MEASURED_STATE_MASK);
        }
        return StringUtils.createListItemDetailSpannedString("SDK Missing", SupportMenu.CATEGORY_MASK);
    }

    @Override // com.applovin.impl.o2
    public int d() {
        if (o()) {
            return R.drawable.applovin_ic_disclosure_arrow;
        }
        return super.h();
    }

    @Override // com.applovin.impl.o2
    public int e() {
        return m0.a(R.color.applovin_sdk_disclosureButtonColor, this.f10462o);
    }

    @Override // com.applovin.impl.o2
    public int h() {
        int h10 = this.f10461n.h();
        if (h10 <= 0) {
            return R.drawable.applovin_ic_mediation_placeholder;
        }
        return h10;
    }

    @Override // com.applovin.impl.o2
    public boolean o() {
        if (this.f10461n.q() != b3.a.MISSING) {
            return true;
        }
        return false;
    }

    public b3 r() {
        return this.f10461n;
    }

    public String toString() {
        return "MediatedNetworkListItemViewModel{text=" + ((Object) this.f9076c) + ", detailText=" + ((Object) this.f9077d) + ", network=" + this.f10461n + "}";
    }
}
