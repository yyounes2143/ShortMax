package com.ss.ttvideoengine.abr;

import com.bytedance.vcloud.abrmodule.ISegmentInfo;
import com.bytedance.vcloud.abrmodule.ISegmentItem;
import com.ss.ttvideoengine.utils.TTHelper;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes6.dex */
public class SegmentInfo implements ISegmentInfo {
    private static final String PLAYER_SIDX_OBJECT_NAME = "com.ss.ttm.player.SidxListObject";
    private static boolean loadClassFailed = false;
    private static Method sidxGetBitRate;
    private static Method sidxGetEndIndex;
    private static Method sidxGetFileId;
    private static Method sidxGetItem;
    private static Method sidxGetMediaType;
    private static Method sidxGetStartIndex;
    private static Method sidxGetTotalNum;
    private static Class<?> sidxListObjectClass;
    private boolean loadObjectSucceed;
    private Long mBitrate;
    private Integer mEndIndex;
    private String mFileId;
    private Integer mMediaType;
    private Integer mStartIndex;
    private Integer mTotalNum;
    private Object playerSidxList;

    public SegmentInfo(Object obj) {
        this.loadObjectSucceed = false;
        this.playerSidxList = obj;
        Class<?> cls = sidxListObjectClass;
        if (cls == null && !loadClassFailed) {
            try {
                Class<?> clzUsingPluginLoader = TTHelper.getClzUsingPluginLoader(200, PLAYER_SIDX_OBJECT_NAME);
                sidxListObjectClass = clzUsingPluginLoader;
                sidxGetMediaType = clzUsingPluginLoader.getMethod("getMediaType", new Class[0]);
                sidxGetTotalNum = sidxListObjectClass.getMethod("getTotalNum", new Class[0]);
                sidxGetStartIndex = sidxListObjectClass.getMethod("getStartIndex", new Class[0]);
                sidxGetEndIndex = sidxListObjectClass.getMethod("getEndIndex", new Class[0]);
                sidxGetBitRate = sidxListObjectClass.getMethod("getBitrate", new Class[0]);
                sidxGetFileId = sidxListObjectClass.getMethod("getFileId", new Class[0]);
                sidxGetItem = sidxListObjectClass.getMethod("getItem", Integer.TYPE);
            } catch (Exception unused) {
                this.playerSidxList = null;
                loadClassFailed = true;
            }
        } else if (cls == null) {
            this.playerSidxList = null;
        }
        Object obj2 = this.playerSidxList;
        if (obj2 != null && obj2.getClass().equals(sidxListObjectClass)) {
            this.loadObjectSucceed = true;
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentInfo
    public long getBitrate() {
        Method method;
        Long l10 = this.mBitrate;
        if (l10 != null) {
            return l10.longValue();
        }
        if (!this.loadObjectSucceed || (method = sidxGetBitRate) == null) {
            return -1L;
        }
        try {
            Long l11 = (Long) method.invoke(this.playerSidxList, new Object[0]);
            this.mBitrate = l11;
            return l11.longValue();
        } catch (Exception unused) {
            this.mBitrate = -1L;
            return -1L;
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentInfo
    public int getEndIndex() {
        Method method;
        Integer num = this.mEndIndex;
        if (num != null) {
            return num.intValue();
        }
        if (!this.loadObjectSucceed || (method = sidxGetEndIndex) == null) {
            return 0;
        }
        try {
            Integer num2 = (Integer) method.invoke(this.playerSidxList, new Object[0]);
            this.mEndIndex = num2;
            return num2.intValue();
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentInfo
    public String getFileId() {
        Method method;
        String str = this.mFileId;
        if (str != null) {
            return str;
        }
        if (this.loadObjectSucceed && (method = sidxGetFileId) != null) {
            try {
                this.mFileId = (String) method.invoke(this.playerSidxList, new Object[0]);
            } catch (Exception unused) {
                this.mFileId = null;
            }
        }
        return this.mFileId;
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentInfo
    public List<? extends ISegmentItem> getItems() {
        ArrayList arrayList = new ArrayList();
        if (this.loadObjectSucceed && sidxGetItem != null) {
            for (int i10 = 0; getStartIndex() + i10 <= getEndIndex(); i10++) {
                try {
                    arrayList.add(new SegmentItem(sidxGetItem.invoke(this.playerSidxList, Integer.valueOf(i10))));
                } catch (Exception unused) {
                    return null;
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentInfo
    public int getMediaType() {
        Method method;
        Integer num = this.mMediaType;
        if (num != null) {
            return num.intValue();
        }
        if (!this.loadObjectSucceed || (method = sidxGetMediaType) == null) {
            return -1;
        }
        try {
            Integer num2 = (Integer) method.invoke(this.playerSidxList, new Object[0]);
            this.mMediaType = num2;
            return num2.intValue();
        } catch (Exception unused) {
            this.mMediaType = -1;
            return -1;
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentInfo
    public int getStartIndex() {
        Method method;
        Integer num = this.mStartIndex;
        if (num != null) {
            return num.intValue();
        }
        if (!this.loadObjectSucceed || (method = sidxGetStartIndex) == null) {
            return 0;
        }
        try {
            Integer num2 = (Integer) method.invoke(this.playerSidxList, new Object[0]);
            this.mStartIndex = num2;
            return num2.intValue();
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.ISegmentInfo
    public int getTotalNum() {
        Method method;
        Integer num = this.mTotalNum;
        if (num != null) {
            return num.intValue();
        }
        if (!this.loadObjectSucceed || (method = sidxGetTotalNum) == null) {
            return -1;
        }
        try {
            Integer num2 = (Integer) method.invoke(this.playerSidxList, new Object[0]);
            this.mTotalNum = num2;
            return num2.intValue();
        } catch (Exception unused) {
            this.mTotalNum = -1;
            return -1;
        }
    }
}
