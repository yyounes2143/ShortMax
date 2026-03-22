package io.bidmachine.analytics;

import com.explorestack.protobuf.Struct;
import java.util.List;
import kotlin.Metadata;
@Metadata
/* loaded from: classes7.dex */
public final class AnalyticsConfig {

    /* renamed from: a  reason: collision with root package name */
    private final String f53906a;

    /* renamed from: b  reason: collision with root package name */
    private final List f53907b;

    /* renamed from: c  reason: collision with root package name */
    private final List f53908c;

    /* renamed from: d  reason: collision with root package name */
    private final String f53909d;

    /* renamed from: e  reason: collision with root package name */
    private final Struct f53910e;

    public AnalyticsConfig(String str, List<MonitorConfig> list, List<ReaderConfig> list2, String str2, Struct struct) {
        this.f53906a = str;
        this.f53907b = list;
        this.f53908c = list2;
        this.f53909d = str2;
        this.f53910e = struct;
    }

    public final String getBpk() {
        return this.f53909d;
    }

    public final Struct getExtras() {
        return this.f53910e;
    }

    public final List<MonitorConfig> getMonitorConfigList() {
        return this.f53907b;
    }

    public final List<ReaderConfig> getReaderConfigList() {
        return this.f53908c;
    }

    public final String getSessionId() {
        return this.f53906a;
    }
}
