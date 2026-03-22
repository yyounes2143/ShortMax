package com.mbridge.msdk.advanced.request;

import android.content.Context;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.out.MBridgeIds;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
/* compiled from: BaseNativeAdvancedV3Params.java */
/* loaded from: classes4.dex */
public class a {
    public static com.mbridge.msdk.foundation.same.net.wrapper.e a(Context context, MBridgeIds mBridgeIds, f fVar) {
        String b10 = com.mbridge.msdk.foundation.controller.c.m().b();
        String md5 = SameMD5.getMD5(com.mbridge.msdk.foundation.controller.c.m().b() + com.mbridge.msdk.foundation.controller.c.m().c());
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
        String a10 = com.mbridge.msdk.foundation.same.buffer.b.a(mBridgeIds.getUnitId(), "h5_native");
        String a11 = u0.a(context, mBridgeIds.getUnitId());
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "app_id", b10);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PROPERTIES_UNIT_ID, mBridgeIds.getUnitId());
        if (!TextUtils.isEmpty(mBridgeIds.getPlacementId())) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PLACEMENT_ID, mBridgeIds.getPlacementId());
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "sign", md5);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "req_type", fVar.d() + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_num", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "tnum", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "only_impression", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ping_mode", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.same.net.wrapper.e.f27190g, a10);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.same.net.wrapper.e.f27191h, a11);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.same.net.wrapper.e.f27192i, fVar.e());
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_type", MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, TypedValues.CycleType.S_WAVE_OFFSET, fVar.c() + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.entity.b.JSON_KEY_UNIT_SIZE, fVar.b() + TextureRenderKeys.KEY_IS_X + fVar.a());
        return eVar;
    }
}
