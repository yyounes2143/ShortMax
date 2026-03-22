package com.mbridge.msdk.nativex.view.mbfullview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes6.dex */
public class MBridgeTopFullView extends BaseView {
    public static final String INTERFACE_RESULT = MBridgeTopFullView.class.getName() + "WithResault";

    /* renamed from: j  reason: collision with root package name */
    protected ImageView f28407j;

    /* renamed from: k  reason: collision with root package name */
    protected TextView f28408k;

    /* renamed from: l  reason: collision with root package name */
    protected TextView f28409l;

    /* renamed from: m  reason: collision with root package name */
    protected StarLevelLayoutView f28410m;

    public MBridgeTopFullView(Context context) {
        super(context);
        View inflate = LayoutInflater.from(getContext()).inflate(h0.a(getContext(), "mbridge_nativex_fullscreen_top", TtmlNode.TAG_LAYOUT), this.f28403i);
        if (inflate != null) {
            this.f28407j = (ImageView) inflate.findViewById(h0.a(getContext(), "mbridge_full_tv_display_icon", "id"));
            this.f28408k = (TextView) inflate.findViewById(h0.a(getContext(), "mbridge_full_tv_display_title", "id"));
            this.f28409l = (TextView) inflate.findViewById(h0.a(getContext(), "mbridge_full_tv_display_description", "id"));
            this.f28410m = (StarLevelLayoutView) inflate.findViewById(h0.a(getContext(), "mbridge_full_tv_feeds_star", "id"));
            this.f28409l.setTextColor(-7829368);
            inflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            updateLayoutParams();
        }
    }

    public TextView getMBridgeFullViewDisplayDscription() {
        return this.f28409l;
    }

    public ImageView getMBridgeFullViewDisplayIcon() {
        return this.f28407j;
    }

    public TextView getMBridgeFullViewDisplayTitle() {
        return this.f28408k;
    }

    public StarLevelLayoutView getStarLevelLayoutView() {
        return this.f28410m;
    }

    public void updateLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(10);
        this.f28395a.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(10);
        this.f28396b.setLayoutParams(layoutParams2);
    }
}
