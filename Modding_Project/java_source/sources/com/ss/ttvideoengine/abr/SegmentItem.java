package com.ss.ttvideoengine.abr;

import com.bytedance.vcloud.abrmodule.ISegmentItem;
import com.ss.ttvideoengine.utils.TTHelper;
import java.lang.reflect.Method;
/* loaded from: classes6.dex */
public class SegmentItem implements ISegmentItem {
    private static final String PLAYER_SIDX_ITEM_NAME = "com.ss.ttm.player.SidxListObject$SidxItem";
    private static boolean loadClassFailed = false;
    private static Method sidxItemGetDuration;
    private static Method sidxItemGetIndex;
    private static Method sidxItemGetOffset;
    private static Method sidxItemGetSize;
    private static Method sidxItemGetTimeStamp;
    private static Class<?> sidxItemObjectClass;
    private boolean loadObjectSucceed;
    private Long mDuration;
    private Integer mIndex;
    private Long mOffset;
    private Long mSize;
    private Long mTimeStamp;
    private Object playerSidxItem;

    public SegmentItem(Object obj) {
        this.loadObjectSucceed = false;
        this.playerSidxItem = obj;
        Class<?> cls = sidxItemObjectClass;
        if (cls == null && !loadClassFailed) {
            try {
                Class<?> clzUsingPluginLoader = TTHelper.getClzUsingPluginLoader(200, PLAYER_SIDX_ITEM_NAME);
                sidxItemObjectClass = clzUsingPluginLoader;
                sidxItemGetIndex = clzUsingPluginLoader.getMethod("getIndex", new Class[0]);
                sidxItemGetOffset = sidxItemObjectClass.getMethod("getOffset", new Class[0]);
                sidxItemGetTimeStamp = sidxItemObjectClass.getMethod("getTimestamp", new Class[0]);
                sidxItemGetDuration = sidxItemObjectClass.getMethod("getDuration", new Class[0]);
                sidxItemGetSize = sidxItemObjectClass.getMethod("getSize", new Class[0]);
            } catch (Exception unused) {
                this.playerSidxItem = null;
                loadClassFailed = true;
            }
        } else if (cls == null) {
            this.playerSidxItem = null;
        }
        Object obj2 = this.playerSidxItem;
        if (obj2 != null && obj2.getClass().equals(sidxItemObjectClass)) {
            this.loadObjectSucceed = true;
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentItem
    public long getDuration() {
        Method method;
        Long l10 = this.mDuration;
        if (l10 != null) {
            return l10.longValue();
        }
        if (!this.loadObjectSucceed || (method = sidxItemGetDuration) == null) {
            return -1L;
        }
        try {
            Long l11 = (Long) method.invoke(this.playerSidxItem, new Object[0]);
            this.mDuration = l11;
            return l11.longValue();
        } catch (Exception unused) {
            this.mDuration = -1L;
            return -1L;
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentItem
    public int getIndex() {
        Method method;
        Integer num = this.mIndex;
        if (num != null) {
            return num.intValue();
        }
        if (!this.loadObjectSucceed || (method = sidxItemGetIndex) == null) {
            return -1;
        }
        try {
            Integer num2 = (Integer) method.invoke(this.playerSidxItem, new Object[0]);
            this.mIndex = num2;
            return num2.intValue();
        } catch (Exception unused) {
            this.mIndex = -1;
            return -1;
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentItem
    public long getOffset() {
        Method method;
        Long l10 = this.mOffset;
        if (l10 != null) {
            return l10.longValue();
        }
        if (!this.loadObjectSucceed || (method = sidxItemGetOffset) == null) {
            return -1L;
        }
        try {
            Long l11 = (Long) method.invoke(this.playerSidxItem, new Object[0]);
            this.mOffset = l11;
            return l11.longValue();
        } catch (Exception unused) {
            this.mOffset = -1L;
            return -1L;
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentItem
    public long getSize() {
        Method method;
        Long l10 = this.mSize;
        if (l10 != null) {
            return l10.longValue();
        }
        if (!this.loadObjectSucceed || (method = sidxItemGetSize) == null) {
            return -1L;
        }
        try {
            Long l11 = (Long) method.invoke(this.playerSidxItem, new Object[0]);
            this.mSize = l11;
            return l11.longValue();
        } catch (Exception unused) {
            this.mSize = -1L;
            return -1L;
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentItem
    public long getTimestamp() {
        Method method;
        Long l10 = this.mTimeStamp;
        if (l10 != null) {
            return l10.longValue();
        }
        if (!this.loadObjectSucceed || (method = sidxItemGetTimeStamp) == null) {
            return -1L;
        }
        try {
            Long l11 = (Long) method.invoke(this.playerSidxItem, new Object[0]);
            this.mTimeStamp = l11;
            return l11.longValue();
        } catch (Exception unused) {
            this.mTimeStamp = -1L;
            return -1L;
        }
    }
}
