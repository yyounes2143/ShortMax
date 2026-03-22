package io.bidmachine.analytics;

import kotlin.Metadata;
@Metadata
/* loaded from: classes7.dex */
public final class MonitorConfig {

    /* renamed from: a  reason: collision with root package name */
    private final String f53921a;

    /* renamed from: b  reason: collision with root package name */
    private final String f53922b;

    /* renamed from: c  reason: collision with root package name */
    private final int f53923c;

    /* renamed from: d  reason: collision with root package name */
    private final long f53924d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f53925e;

    public MonitorConfig(String str, String str2, int i10, long j10, boolean z10) {
        this.f53921a = str;
        this.f53922b = str2;
        this.f53923c = i10;
        this.f53924d = j10;
        this.f53925e = z10;
    }

    public final int getBatchSize() {
        return this.f53923c;
    }

    public final long getInterval() {
        return this.f53924d;
    }

    public final String getName() {
        return this.f53921a;
    }

    public final String getUrl() {
        return this.f53922b;
    }

    public final boolean isReportEnabled() {
        return this.f53925e;
    }
}
