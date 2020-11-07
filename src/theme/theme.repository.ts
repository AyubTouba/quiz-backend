import { Repository, EntityRepository } from "typeorm";
import { Theme } from "./theme.entity";

@EntityRepository(Theme)
export class ThemeRepository extends Repository<Theme> {

}