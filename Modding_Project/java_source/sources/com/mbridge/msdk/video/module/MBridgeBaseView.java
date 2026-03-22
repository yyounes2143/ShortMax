package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.video.module.listener.a;
import com.mbridge.msdk.video.module.listener.impl.f;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public abstract class MBridgeBaseView extends RelativeLayout {
    public static final String TAG = "MBridgeBaseView";

    /* renamed from: a  reason: collision with root package name */
    protected Context f30925a;

    /* renamed from: b  reason: collision with root package name */
    protected CampaignEx f30926b;

    /* renamed from: c  reason: collision with root package name */
    protected LayoutInflater f30927c;

    /* renamed from: d  reason: collision with root package name */
    protected int f30928d;

    /* renamed from: e  reason: collision with root package name */
    protected boolean f30929e;

    /* renamed from: f  reason: collision with root package name */
    protected float f30930f;

    /* renamed from: g  reason: collision with root package name */
    protected float f30931g;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f30932h;

    /* renamed from: i  reason: collision with root package name */
    protected int f30933i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f30934j;

    /* renamed from: k  reason: collision with root package name */
    protected int f30935k;

    /* renamed from: l  reason: collision with root package name */
    protected int f30936l;
    public a notifyListener;

    public MBridgeBaseView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject a(int i10) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject = new JSONObject();
        } catch (JSONException e10) {
            e = e10;
        }
        try {
            jSONObject.put(com.mbridge.msdk.foundation.same.a.f27026h, u0.b(c.m().d(), this.f30930f));
            jSONObject.put(com.mbridge.msdk.foundation.same.a.f27027i, u0.b(c.m().d(), this.f30931g));
            jSONObject.put(com.mbridge.msdk.foundation.same.a.f27031m, i10);
            try {
                this.f30928d = getContext().getResources().getConfiguration().orientation;
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            jSONObject.put(com.mbridge.msdk.foundation.same.a.f27029k, this.f30928d);
            jSONObject.put(com.mbridge.msdk.foundation.same.a.f27030l, u0.d(getContext()));
            return jSONObject;
        } catch (JSONException e12) {
            e = e12;
            jSONObject2 = jSONObject;
            e.printStackTrace();
            return jSONObject2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String c() {
        return a(0).toString();
    }

    public void defaultShow() {
        p0.a(TAG, "defaultShow");
    }

    public int filterFindViewId(boolean z10, String str) {
        if (z10) {
            return findDyID(str);
        }
        return findID(str);
    }

    public int findColor(String str) {
        return h0.a(this.f30925a.getApplicationContext(), str, "color");
    }

    public int findDrawable(String str) {
        return h0.a(this.f30925a.getApplicationContext(), str, "drawable");
    }

    public int findDyID(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str.hashCode();
        }
        return -1;
    }

    public int findID(String str) {
        return h0.a(this.f30925a.getApplicationContext(), str, "id");
    }

    public int findLayout(String str) {
        return h0.a(this.f30925a.getApplicationContext(), str, TtmlNode.TAG_LAYOUT);
    }

    public CampaignEx getCampaign() {
        return this.f30926b;
    }

    public LinearLayout.LayoutParams getParentLinearLayoutParams() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return (LinearLayout.LayoutParams) layoutParams;
        }
        return null;
    }

    public RelativeLayout.LayoutParams getParentRelativeLayoutParams() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            return (RelativeLayout.LayoutParams) layoutParams;
        }
        return null;
    }

    public abstract void init(Context context);

    public boolean isLandscape() {
        if (this.f30925a.getResources().getConfiguration().orientation == 2) {
            return true;
        }
        return false;
    }

    public boolean isNotNULL(View... viewArr) {
        if (viewArr == null) {
            return false;
        }
        int length = viewArr.length;
        int i10 = 0;
        boolean z10 = false;
        while (i10 < length) {
            if (viewArr[i10] == null) {
                return false;
            }
            i10++;
            z10 = true;
        }
        return z10;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        this.f30928d = configuration.orientation;
        super.onConfigurationChanged(configuration);
        Log.d(TAG, "onConfigurationChanged:" + configuration.orientation);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f30930f = motionEvent.getRawX();
        this.f30931g = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void onSelfConfigurationChanged(Configuration configuration) {
        this.f30928d = configuration.orientation;
        Log.d(TAG, "onSelfConfigurationChanged:" + configuration.orientation);
    }

    public void setCampaign(CampaignEx campaignEx) {
        this.f30926b = campaignEx;
    }

    public void setLayoutCenter(int i10, int i11) {
        RelativeLayout.LayoutParams parentRelativeLayoutParams = getParentRelativeLayoutParams();
        LinearLayout.LayoutParams parentLinearLayoutParams = getParentLinearLayoutParams();
        if (parentRelativeLayoutParams != null) {
            parentRelativeLayoutParams.addRule(13);
            if (i10 != -999) {
                parentRelativeLayoutParams.width = i10;
            }
            if (i11 != -999) {
                parentRelativeLayoutParams.height = i11;
            }
            setLayoutParams(parentRelativeLayoutParams);
        } else if (parentLinearLayoutParams != null) {
            parentLinearLayoutParams.gravity = 17;
            if (i10 != -999) {
                parentLinearLayoutParams.width = i10;
            }
            if (i11 != -999) {
                parentLinearLayoutParams.height = i11;
            }
            setLayoutParams(parentLinearLayoutParams);
        }
    }

    public void setLayoutParam(int i10, int i11, int i12, int i13) {
        RelativeLayout.LayoutParams parentRelativeLayoutParams = getParentRelativeLayoutParams();
        LinearLayout.LayoutParams parentLinearLayoutParams = getParentLinearLayoutParams();
        if (parentRelativeLayoutParams != null) {
            parentRelativeLayoutParams.topMargin = i11;
            parentRelativeLayoutParams.leftMargin = i10;
            if (i12 != -999) {
                parentRelativeLayoutParams.width = i12;
            }
            if (i13 != -999) {
                parentRelativeLayoutParams.height = i13;
            }
            setLayoutParams(parentRelativeLayoutParams);
        } else if (parentLinearLayoutParams != null) {
            parentLinearLayoutParams.topMargin = i11;
            parentLinearLayoutParams.leftMargin = i10;
            if (i12 != -999) {
                parentLinearLayoutParams.width = i12;
            }
            if (i13 != -999) {
                parentLinearLayoutParams.height = i13;
            }
            setLayoutParams(parentLinearLayoutParams);
        }
    }

    public void setMatchParent() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        layoutParams.height = -1;
        layoutParams.width = -1;
    }

    public void setNotifyListener(a aVar) {
        this.notifyListener = aVar;
    }

    public void setWrapContent() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            return;
        }
        layoutParams.height = -2;
        layoutParams.width = -2;
    }

    public MBridgeBaseView(Context context, AttributeSet attributeSet, boolean z10, int i10, boolean z11, int i11, int i12) {
        super(context, attributeSet);
        this.f30928d = 1;
        this.notifyListener = new f();
        this.f30929e = false;
        this.f30935k = 1;
        this.f30936l = 0;
        this.f30925a = context;
        this.f30927c = LayoutInflater.from(context);
        this.f30932h = z10;
        this.f30933i = i10;
        this.f30934j = z11;
        this.f30935k = i11;
        this.f30936l = i12;
        init(context);
    }

    public MBridgeBaseView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f30928d = 1;
        this.notifyListener = new f();
        this.f30929e = false;
        this.f30935k = 1;
        this.f30936l = 0;
        this.f30925a = context;
        this.f30927c = LayoutInflater.from(context);
        init(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
    }
}
