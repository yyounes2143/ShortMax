package com.unity3d.services.ads.gmascar.utils;

import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: IScarAdFormatProvider.kt */
@Metadata
/* loaded from: classes7.dex */
public interface IScarAdFormatProvider {
    @NotNull
    List<UnityAdFormat> buildAdFormatList();
}
