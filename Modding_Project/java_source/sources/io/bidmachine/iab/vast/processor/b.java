package io.bidmachine.iab.vast.processor;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.vast.VastUrlProcessorRegistry;
import io.bidmachine.iab.vast.tags.AdContentTag;
import java.util.ArrayList;
import java.util.List;
import tm.g;
/* loaded from: classes7.dex */
public class b {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private VastAd f54867b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private g f54868c;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f54866a = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private boolean f54869d = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<String> a() {
        return this.f54866a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@Nullable VastAd vastAd) {
        this.f54867b = vastAd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@NonNull AdContentTag adContentTag, @NonNull g gVar) {
        d(gVar);
        Bundle bundle = new Bundle();
        bundle.putInt("params_error_code", gVar.a());
        List<String> r02 = adContentTag.r0();
        if (r02 != null && !r02.isEmpty()) {
            for (String str : r02) {
                String a10 = VastUrlProcessorRegistry.a(str, bundle);
                if (!TextUtils.isEmpty(a10)) {
                    this.f54866a.add(a10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@Nullable g gVar) {
        this.f54868c = gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(boolean z10) {
        this.f54869d = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.f54869d;
    }

    @Nullable
    public VastAd g() {
        return this.f54867b;
    }

    @Nullable
    public g h() {
        return this.f54868c;
    }

    public boolean i() {
        if (this.f54867b != null) {
            return true;
        }
        return false;
    }
}
