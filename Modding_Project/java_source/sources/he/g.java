package he;

import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.parser.CampaignParserPriority;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ICampaignParser.kt */
@Metadata
/* loaded from: classes6.dex */
public interface g {

    /* compiled from: ICampaignParser.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public static /* synthetic */ Object a(g gVar, boolean z10, rs.c cVar, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    z10 = true;
                }
                return gVar.c(z10, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: parse");
        }
    }

    @NotNull
    CampaignType a();

    boolean b(@NotNull String str);

    @Nullable
    Object c(boolean z10, @NotNull rs.c<? super CampaignInfo> cVar);

    @NotNull
    String name();

    @NotNull
    CampaignParserPriority priority();
}
