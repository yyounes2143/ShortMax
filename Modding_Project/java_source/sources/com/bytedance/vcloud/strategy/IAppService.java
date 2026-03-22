package com.bytedance.vcloud.strategy;
/* loaded from: classes3.dex */
public interface IAppService {
    String getMediaPortrait(String str, String str2, String str3);

    String getMediaPortraits(String str, String str2, String str3);

    String getPortrait(String str, String str2);

    String getPortraits(String str, String str2);

    default void addGroupConfig(String str, String str2, String str3) {
    }
}
