package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.Button;
import com.bytedance.sdk.component.utils.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class cFZ extends Button {
    public cFZ(Context context) {
        super(context);
        oJ();
    }

    private void oJ() {
        setId(com.bytedance.sdk.openadsdk.utils.eZI.YQ);
        Context context = getContext();
        setLayoutParams(new ViewGroup.LayoutParams(-1, cdg.ZYk(context, 48.0f)));
        setBackground(com.bytedance.sdk.openadsdk.utils.dLZ.oJ(context, "tt_browser_download_selector"));
        setText(cY.oJ(context, "tt_video_download_apk"));
        setTextColor(-1);
        setTextSize(2, 16.0f);
    }
}
