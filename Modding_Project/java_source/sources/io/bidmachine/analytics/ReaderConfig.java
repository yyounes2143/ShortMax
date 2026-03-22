package io.bidmachine.analytics;

import java.util.List;
import kotlin.Metadata;
@Metadata
/* loaded from: classes7.dex */
public final class ReaderConfig {

    /* renamed from: a  reason: collision with root package name */
    private final String f53926a;

    /* renamed from: b  reason: collision with root package name */
    private final String f53927b;

    /* renamed from: c  reason: collision with root package name */
    private final long f53928c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f53929d;

    /* renamed from: e  reason: collision with root package name */
    private final List f53930e;

    @Metadata
    /* loaded from: classes7.dex */
    public static final class Rule {

        /* renamed from: a  reason: collision with root package name */
        private final String f53931a;

        /* renamed from: b  reason: collision with root package name */
        private final String f53932b;

        public Rule(String str, String str2) {
            this.f53931a = str;
            this.f53932b = str2;
        }

        public final String getPath() {
            return this.f53932b;
        }

        public final String getTag() {
            return this.f53931a;
        }
    }

    public ReaderConfig(String str, String str2, long j10, boolean z10, List<Rule> list) {
        this.f53926a = str;
        this.f53927b = str2;
        this.f53928c = j10;
        this.f53929d = z10;
        this.f53930e = list;
    }

    public final long getInterval() {
        return this.f53928c;
    }

    public final String getName() {
        return this.f53926a;
    }

    public final List<Rule> getRules() {
        return this.f53930e;
    }

    public final boolean getUniqueOnly() {
        return this.f53929d;
    }

    public final String getUrl() {
        return this.f53927b;
    }
}
