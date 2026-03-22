package com.vungle.ads.internal.network.converters;

import kotlin.Metadata;
import kotlin.Unit;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.Nullable;
import ws.b;
/* compiled from: EmptyResponseConverter.kt */
@Metadata
/* loaded from: classes7.dex */
public final class EmptyResponseConverter implements Converter<ResponseBody, Void> {
    @Override // com.vungle.ads.internal.network.converters.Converter
    @Nullable
    public Void convert(@Nullable ResponseBody responseBody) {
        if (responseBody != null) {
            try {
                responseBody.close();
                Unit unit = Unit.f60915a;
                b.a(responseBody, null);
            } finally {
            }
        }
        return null;
    }
}
