package sf;

import com.startshorts.androidplayer.bean.push.PushTime;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.Date;
import jk.f;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sf.b;
/* compiled from: BasePushTask.kt */
@Metadata
/* loaded from: classes6.dex */
public abstract class a implements b {
    @Nullable
    public final PushTime d(long j10) {
        long P0 = ud.b.f68412a.P0(c().name());
        for (PushTime pushTime : b()) {
            if (j10 >= pushTime.getBeginTime() && j10 <= pushTime.getEndTime() && Math.abs(j10 - P0) >= pushTime.getInterval()) {
                return pushTime;
            }
        }
        return null;
    }

    public final boolean e() {
        if (Math.abs(DeviceUtil.f48146a.K() - ud.b.f68412a.P0("CUSTOM")) < b.f66349a.a()) {
            return true;
        }
        return false;
    }

    public final boolean f() {
        Integer intOrNull;
        int intValue;
        String f10 = TimeUtil.f48175a.f(f.a(new Date()));
        String abTestValue = ABTestFactory.f42224a.J0().abTestValue();
        if (abTestValue.length() == 0 || (intOrNull = StringsKt.toIntOrNull(abTestValue)) == null) {
            intValue = 1;
        } else {
            intValue = intOrNull.intValue();
        }
        if (ud.b.f68412a.f(f10) >= intValue) {
            return true;
        }
        return false;
    }

    public final boolean g() {
        return ud.a.f68411a.v(c().name());
    }

    public long h(@NotNull String str) {
        return b.C0921b.a(this, str);
    }
}
