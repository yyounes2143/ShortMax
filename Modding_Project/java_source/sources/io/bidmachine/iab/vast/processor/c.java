package io.bidmachine.iab.vast.processor;

import io.bidmachine.iab.vast.tags.VastXmlTag;
/* loaded from: classes7.dex */
class c {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f54870a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f54871b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f54872c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c() {
        this(true, true, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f54871b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f54872c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f54870a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(VastXmlTag vastXmlTag) {
        this(vastXmlTag.N("followAdditionalWrappers", true), vastXmlTag.N("allowMultipleAds", true), vastXmlTag.N("fallbackOnNoAd", true));
    }

    private c(boolean z10, boolean z11, boolean z12) {
        this.f54870a = z10;
        this.f54871b = z11;
        this.f54872c = z12;
    }
}
