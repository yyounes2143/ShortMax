package com.ss.mediakit.net;
/* loaded from: classes6.dex */
public class AVMDLDNSInfo {
    public String mErrorStr;
    public long mExpiredTime;
    public String mExtraInfo;
    public String mHost;
    public String[] mHosts;
    public String mId;
    public String mIpList;
    public int mType;

    public AVMDLDNSInfo(int i10, String[] strArr, String str, long j10, String str2) {
        this.mType = i10;
        this.mHosts = strArr;
        this.mIpList = str;
        this.mExpiredTime = j10;
        this.mId = str2;
    }

    public AVMDLDNSInfo(int i10, String str, String str2, long j10, String str3) {
        this.mType = i10;
        this.mHost = str;
        this.mIpList = str2;
        this.mExpiredTime = j10;
        this.mId = str3;
    }

    public AVMDLDNSInfo(int i10, String str, String str2, long j10, String str3, String str4) {
        this.mType = i10;
        this.mHost = str;
        this.mIpList = str2;
        this.mExpiredTime = j10;
        this.mId = str3;
        this.mErrorStr = str4;
    }
}
