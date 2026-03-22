package com.mbridge.msdk.nativex.view.mbfullview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes6.dex */
public class BaseView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    protected RelativeLayout f28395a;

    /* renamed from: b  reason: collision with root package name */
    protected RelativeLayout f28396b;

    /* renamed from: c  reason: collision with root package name */
    protected RelativeLayout f28397c;

    /* renamed from: d  reason: collision with root package name */
    protected ImageView f28398d;

    /* renamed from: e  reason: collision with root package name */
    protected TextView f28399e;

    /* renamed from: f  reason: collision with root package name */
    protected ProgressBar f28400f;

    /* renamed from: g  reason: collision with root package name */
    protected FrameLayout f28401g;

    /* renamed from: h  reason: collision with root package name */
    protected LinearLayout f28402h;

    /* renamed from: i  reason: collision with root package name */
    protected RelativeLayout f28403i;
    public a style;

    /* loaded from: classes6.dex */
    public enum a {
        FULL_TOP_VIEW,
        FULL_MIDDLE_VIEW
    }

    public BaseView(Context context) {
        super(context);
        View inflate = LayoutInflater.from(getContext()).inflate(h0.a(getContext(), "mbridge_nativex_fullbasescreen", TtmlNode.TAG_LAYOUT), this);
        this.f28403i = (RelativeLayout) inflate;
        if (inflate != null) {
            this.f28395a = (RelativeLayout) inflate.findViewById(h0.a(getContext(), "mbridge_full_rl_playcontainer", "id"));
            this.f28396b = (RelativeLayout) inflate.findViewById(h0.a(getContext(), "mbridge_full_player_parent", "id"));
            this.f28397c = (RelativeLayout) inflate.findViewById(h0.a(getContext(), "mbridge_full_rl_close", "id"));
            this.f28398d = (ImageView) inflate.findViewById(h0.a(getContext(), "mbridge_full_iv_close", "id"));
            this.f28399e = (TextView) inflate.findViewById(h0.a(getContext(), "mbridge_full_tv_install", "id"));
            this.f28400f = (ProgressBar) inflate.findViewById(h0.a(getContext(), "mbridge_full_pb_loading", "id"));
            this.f28401g = (FrameLayout) inflate.findViewById(h0.a(getContext(), "mbridge_full_animation_content", "id"));
            this.f28402h = (LinearLayout) inflate.findViewById(h0.a(getContext(), "mbridge_full_animation_player", "id"));
            inflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        }
    }

    public RelativeLayout getMBridgeFullClose() {
        return this.f28397c;
    }

    public ImageView getMBridgeFullIvClose() {
        return this.f28398d;
    }

    public ProgressBar getMBridgeFullPb() {
        return this.f28400f;
    }

    public RelativeLayout getMBridgeFullPlayContainer() {
        return this.f28395a;
    }

    public RelativeLayout getMBridgeFullPlayerParent() {
        return this.f28396b;
    }

    public TextView getMBridgeFullTvInstall() {
        return this.f28399e;
    }

    public a getStytle() {
        return this.style;
    }

    public FrameLayout getmAnimationContent() {
        return this.f28401g;
    }

    public LinearLayout getmAnimationPlayer() {
        return this.f28402h;
    }

    public void setStytle(a aVar) {
        this.style = aVar;
    }
}
