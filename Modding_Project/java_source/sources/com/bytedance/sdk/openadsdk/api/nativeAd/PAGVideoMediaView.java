package com.bytedance.sdk.openadsdk.api.nativeAd;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.BTZ.ZYk.ba;
import com.bytedance.sdk.openadsdk.core.ZYk.oJ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.ex;
/* loaded from: classes3.dex */
public class PAGVideoMediaView extends PAGMediaView implements oJ.InterfaceC0202oJ {
    private ba ZYk;
    private cY ex;
    private final com.bytedance.sdk.openadsdk.oJ.ZYk.oJ tB;

    public PAGVideoMediaView(Context context, @Nullable View view, @Nullable com.bytedance.sdk.openadsdk.oJ.ZYk.oJ oJVar) {
        super(context);
        oJ(view);
        this.tB = oJVar;
    }

    private boolean ZYk() {
        ba baVar = this.ZYk;
        if (baVar != null) {
            return baVar.PiB();
        }
        return false;
    }

    private void oJ(View view) {
        if (view instanceof ba) {
            ba baVar = (ba) view;
            this.ZYk = baVar;
            addView(baVar, -1, -1);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView
    public void close() {
        ba baVar = this.ZYk;
        if (baVar != null) {
            baVar.eZI();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ZYk.oJ.InterfaceC0202oJ
    public long getVideoProgress() {
        ba baVar = this.ZYk;
        if (baVar != null && baVar.getNativeVideoController() != null) {
            return this.ZYk.getNativeVideoController().ba();
        }
        return 0L;
    }

    public void handleInterruptVideo() {
        if (!ZYk()) {
            oJ();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ex.oJ(this, this.ex);
    }

    public void setMaterialMeta(cY cYVar) {
        this.ex = cYVar;
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        if (onClickListener instanceof oJ) {
            ((oJ) onClickListener).oJ((oJ.InterfaceC0202oJ) this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView
    public void setVideoAdListener(final PAGVideoAdListener pAGVideoAdListener) {
        com.bytedance.sdk.openadsdk.oJ.ZYk.oJ oJVar = this.tB;
        if (oJVar == null) {
            return;
        }
        oJVar.oJ(new PAGVideoAdListener() { // from class: com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoMediaView.1
            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoAdComplete() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdComplete();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoAdPaused() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPaused();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoAdPlay() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPlay();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoError() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoError();
                }
            }
        });
    }

    private void oJ() {
        ba baVar = this.ZYk;
        if (baVar != null) {
            baVar.awB();
        }
    }
}
